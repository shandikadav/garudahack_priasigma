import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:garudahack_priasigmas/blocs/order/order_bloc.dart';
import 'package:garudahack_priasigmas/models/order_model.dart';
import 'package:garudahack_priasigmas/models/product_model.dart';
import 'package:garudahack_priasigmas/models/user_model.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class DetailFoodItem extends StatefulWidget {
  final String productId;

  const DetailFoodItem({Key? key, required this.productId}) : super(key: key);

  @override
  _DetailFoodItemState createState() => _DetailFoodItemState();
}

class _DetailFoodItemState extends State<DetailFoodItem> {
  int quantity = 1;
  Product? product;
  bool isLoading = true;
  late OrderBloc orderBloc;
  User? user;

  @override
  void initState() {
    super.initState();
    orderBloc = OrderBloc(dio: Dio());
    fetchProduct();
    getUserFromSharedPreferences();
  }

  Future<void> fetchProduct() async {
    final dio = Dio();
    try {
      final response = await dio
          .get('https://dakudaku.vercel.app/product/${widget.productId}');
      setState(() {
        product = Product.fromJson(response.data);
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<void> getUserFromSharedPreferences() async {
    final savedUser = await User.getFromSharedPreferences();
    setState(() {
      user = savedUser;
    });
  }

  Future<void> handleCheckout() async {
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('User not found')));
      return;
    }

    final order = Order(
      userId: user!.id,
      items: Items(
        productId: int.parse(widget.productId),
        quantity: quantity,
        storeId: 1,
      ),
    );

    orderBloc.add(CreateOrder(order));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => orderBloc,
      child: BlocListener<OrderBloc, OrderState>(
        listener: (context, state) {
          if (state is OrderSuccess) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.message)));
          } else if (state is OrderFailure) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text(state.error)));
          }
        },
        child: Scaffold(
          backgroundColor: primaryColor,
          appBar: AppBar(
            toolbarHeight: 80,
            backgroundColor: primaryColor,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15, top: 15),
              child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(300),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back),
                ),
              ),
            ),
          ),
          body: isLoading
              ? Center(child: CircularProgressIndicator())
              : product == null
                  ? Center(
                      child:
                          Text('Product not found', style: blackColorTextStyle))
                  : ListView(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage("${product!.photo}"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product!.name ?? 'No name',
                                style: blackColorTextStyle.copyWith(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 3),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Rp. ${product!.price}",
                                    style: dangerTextsyle.copyWith(
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Rp. ${product!.discountPrice}",
                                    style: blackColorTextStyle.copyWith(
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            if (quantity > 1) {
                                              quantity--;
                                            }
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(500),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.remove,
                                              color: blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        quantity.toString(),
                                        style: const TextStyle(fontSize: 18),
                                      ),
                                      const SizedBox(width: 8),
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            quantity++;
                                          });
                                        },
                                        child: Container(
                                          height: 25,
                                          width: 25,
                                          decoration: BoxDecoration(
                                            color: whiteColor,
                                            borderRadius:
                                                BorderRadius.circular(500),
                                          ),
                                          child: Center(
                                            child: Icon(
                                              Icons.add,
                                              color: blackColor,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    "${product!.discount}% Off",
                                    style:
                                        dangerTextsyle.copyWith(fontSize: 20),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 18,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Recommended to eat before',
                                    style: blackColorTextStyle.copyWith(
                                      fontSize: 13,
                                    ),
                                  ),
                                  Container(
                                    width: 96,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Center(
                                      child: Text(
                                        " ${product!.expiryDate}",
                                        style: blackColorTextStyle.copyWith(
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Text(
                                product!.description ?? 'No description',
                                textAlign: TextAlign.justify,
                                style: blackColorTextStyle.copyWith(
                                  fontSize: 16,
                                ),
                              ),
                              const SizedBox(height: 25),
                              SizedBox(
                                width: double.infinity,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 80),
                                  child: ElevatedButton(
                                    onPressed: handleCheckout,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: blackColor,
                                      minimumSize: Size(130, 60),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor: whiteColor,
                                          child: Icon(
                                            Icons.shopping_bag,
                                            color: blackColor,
                                          ),
                                        ),
                                        Text(
                                          "Check Out",
                                          style: whiteColorTextStyle.copyWith(
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
        ),
      ),
    );
  }
}
