import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

import '../../routes/router.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/item_card_widget.dart';
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
            child: ListView(
              children: [
                const SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: TextField(
                    // controller: emailController,
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
                const SizedBox(
                  height: 18,
                ),
                CarouselSlider(
                  items: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_1.png",
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_2.png",
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_3.png",
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_4.png",
                      ),
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryItems(
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
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Text(
                    "Featured Restaurants",
                    style: blackColorTextStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ItemCard(
                          alamat: "tangerang",
                          imageSource: 'assets/Resto1.png',
                          star: 5,
                          namarestoran: "Padang Merdeka",
                          onTap: () {}),
                      ItemCard(
                        alamat: "Serpong",
                        imageSource: 'assets/Resto2.png',
                        star: 4,
                        namarestoran: "KFC",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Text(
                    "Recommended Food",
                    style: blackColorTextStyle.copyWith(
                        fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 21),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FoodItem(
                        alamat: "Tangerang",
                        namamakanan: "Burger",
                        harga_diskon: 26000,
                        harga: 30000,
                        tanggal_expired: '12-07-24',
                        imagesource: 'assets/IMG_Food1.png',
                        star: 4,
                        namarestoran: "Burger Bangor",
                        onTap: () {
                          // router.goNamed(
                          //   RouteNames.detailFood,
                          //   extra: {
                          //     'imageSource': 'assets/IMG_Food1.png',
                          //    'filteredClassList': <FoodItem>[],
                          //   },
                          // );
                        },
                      ),
                      FoodItem(
                        alamat: "Tangerang",
                        namamakanan: "Burger",
                        harga_diskon: 26000,
                        harga: 30000,
                        tanggal_expired: '12-07-24',
                        imagesource: 'assets/IMG_Food1.png',
                        star: 4,
                        namarestoran: "Burger Bangor",
                        onTap: () {
                          // router.goNamed(
                          //   RouteNames.detailFood,
                          //   extra: {
                          //     'imageSource': 'assets/IMG_Food2.png',
                          //    'filteredClassList': <FoodItem>[],
                          //   },
                          // );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
