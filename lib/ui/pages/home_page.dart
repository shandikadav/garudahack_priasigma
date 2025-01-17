import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dio/dio.dart';
import 'package:garudahack_priasigmas/blocs/getproduct/get_product_bloc.dart';

import '../../models/product_model.dart';
import '../../shared/theme/themes.dart';
import '../../routes/router.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/item_category_widget.dart';
import '../widgets/item_food_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset('assets/img_vector1.png'),
            ],
          ),
          SafeArea(
            child: BlocProvider(
              create: (context) =>
                  GetProductBloc(dio: Dio())..add(GettingProduct()),
              child: ListView(
                children: [
                  const SizedBox(height: 19),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search',
                        hintStyle: blackColorTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w200,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: whiteColor,
                      ),
                    ),
                  ),
                  const SizedBox(height: 18),
                  CarouselSlider(
                    items: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const ItemsCarousel(
                            imagesource: "assets/Image_Itemscarousel_1.png"),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const ItemsCarousel(
                            imagesource: "assets/Image_Itemscarousel_2.png"),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const ItemsCarousel(
                            imagesource: "assets/Image_Itemscarousel_3.png"),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const ItemsCarousel(
                            imagesource: "assets/Image_Itemscarousel_4.png"),
                      )
                    ],
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      enlargeCenterPage: true,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      autoPlayInterval: const Duration(seconds: 5),
                    ),
                  ),
                  const SizedBox(height: 22),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryItems(
                          onTap: () {
                            router.goNamed('meals');
                          },
                          title: "Meals",
                          iconSource: "assets/Ic_meals.png",
                        ),
                        SizedBox(width: 12),
                        CategoryItems(
                          title: "Snacks",
                          iconSource: "assets/IC_Snack.png",
                        ),
                        SizedBox(width: 12),
                        CategoryItems(
                          title: "Fruit",
                          iconSource: "assets/IC_Buah.png",
                        ),
                        SizedBox(width: 12),
                        CategoryItems(
                            title: "Beverages",
                            iconSource: "assets/IC_MINUMAN.png"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 21),
                    child: Text(
                      "Recommended Food",
                      style: blackColorTextStyle.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  BlocBuilder<GetProductBloc, GetProductState>(
                    builder: (context, state) {
                      if (state is GetProductLoading) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (state is GetProductSuccess) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 21),
                          child: Wrap(
                            spacing: 12, // Add spacing between items
                            runSpacing: 12, // Add spacing between rows
                            children: state.products.map((product) {
                              return FoodItem(
                                alamat: product.description ?? 'No description',
                                namamakanan: product.name ?? 'No name',
                                harga_diskon: product.discount ?? 0,
                                harga: product.price ?? 0,
                                tanggal_expired: "23-12-2023",
                                imagesource:
                                    product.photo ?? 'assets/default.png',
                                star: 5,
                                namarestoran: product.name ?? 'No name',
                                onTap: () {
                                   print('Product ID: ${product.id}');
                                  router.goNamed(
                                    RouteNames.detailfood,
                                    pathParameters: {
                                      'id': product.id.toString(),
                                    },
                                  );
                                },
                              );
                            }).toList(),
                          ),
                        );
                      } else if (state is GetProductFailure) {
                        return Center(child: Text(state.message));
                      } else {
                        return Container();
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
