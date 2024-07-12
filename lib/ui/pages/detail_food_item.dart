import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
import 'package:garudahack_priasigmas/ui/widgets/item_food_widget.dart';

class DetailFoodItem extends StatefulWidget {
  final String imageSource;
  // final String namamakanan;
  final List<FoodItem> filteredClassList;

  const DetailFoodItem({
    Key? key,
    required this.imageSource,
    // required this.namamakanan,
    required this.filteredClassList,
  }) : super(key: key);

  @override
  _DetailFoodItemState createState() => _DetailFoodItemState();
}

class _DetailFoodItemState extends State<DetailFoodItem> {
  int quantity = 1; // variabel untuk menyimpan jumlah item yang ingin dipesan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                router.goNamed(RouteNames.home);
              },
              child: const Icon(Icons.arrow_back),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            widget.imageSource,
            fit: BoxFit.contain,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Burger Sultan",
                  style: blackColorTextStyle.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp. 30,000",
                      style: dangerTextsyle.copyWith(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Rp. 26,000",
                      style: blackColorTextStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          if (quantity > 1) {
                            quantity--; // mengurangi jumlah item
                          }
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.remove,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      quantity.toString(), // menampilkan jumlah item
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          quantity++; // menambah jumlah item
                        });
                      },
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.add,
                            color: blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "20% Off",
                      style: dangerTextsyle.copyWith(fontSize: 20),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recommend to eat before : ",
                      style: blackColorTextStyle.copyWith(fontSize: 15),
                    ),
                    Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "13-07-2024",
                          style: whiteColorTextStyle.copyWith(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  "Juicy 85% lean Angus beef patty, perfectly browned with garlic, chili powder, cumin, and onion powder. Served on a toasted bun with lettuce, tomato, onions, and pickles.",
                  textAlign: TextAlign.justify,
                  style: blackColorTextStyle.copyWith(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 25),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Action on button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blackColor,
                      minimumSize: Size(130, 60),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          style: whiteColorTextStyle.copyWith(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
