import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:garudahack_priasigmas/routes/router.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
import 'package:garudahack_priasigmas/ui/widgets/carousel_widget.dart';
import 'package:garudahack_priasigmas/ui/widgets/item_food_widget.dart';

class SnacksPages extends StatelessWidget {
  const SnacksPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Snacks Page",
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
                        imagesource: "assets/Image_Itemscarousel_snack_1.png",
                      ),
                    ),
               ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_snack_2.png",
                      ),
                    ),
               ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_snack_3.png",
                      ),
                    ),
              ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const ItemsCarousel(
                        imagesource: "assets/Image_Itemscarousel_snack_4.png",
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
            FoodItem(alamat: "tangerang", namamakanan: "Oreo", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack1.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "Cookies", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack4.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack5.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack6.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food2.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },)
          ],
        ),
        const SizedBox(height: 25,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FoodItem(alamat: "tangerang", namamakanan: "Iga bakar", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food3.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
            },),
             FoodItem(alamat: "tangerang", namamakanan: "bubur", harga: 20000, harga_diskon: 1000, tanggal_expired: "05-05-2024", imagesource: 'assets/IMG_Food_snack1.png', star: 5, namarestoran: "maknyus", onTap: () {
              router.goNamed(RouteNames.detailfood);
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