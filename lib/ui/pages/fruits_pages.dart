import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../routes/router.dart';
import '../../shared/theme/themes.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/item_food_widget.dart';

class FruitsPages extends StatelessWidget {
  const FruitsPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Fruits Page",
          style: blackColorTextStyle.copyWith(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
     body: ListView(
        children: [
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
                        imagesource: "assets/Image_Itemscarousel_fruit_1.png",
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
      Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          "Recommended Meals",
          style: blackColorTextStyle.copyWith(
            fontSize: 20
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food3.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food3.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food3.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food3.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailFood);
            },)
          ],
        )
          ],
        ),
      )
    ] 
    ),

    );
  }
}