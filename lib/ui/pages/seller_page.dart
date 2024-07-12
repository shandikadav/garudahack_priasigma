import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';
import '../../routes/router.dart';
import '../widgets/item_food_widget.dart';

class SellerPage extends StatefulWidget {
  const SellerPage({super.key});

  @override
  State<SellerPage> createState() => _SellerPageState();
}

class _SellerPageState extends State<SellerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: blackColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Icon(
                Icons.arrow_back_ios,
                color: whiteColor,
                size: 25,
              ),
            ),
          ),
        ),
        title: Text(
          "My Shop",
          style: blackColorTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: blackColor,
            size: 50,
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/img_profile.png",
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Text(
                "Fawwaz Burjo",
                style: blackColorTextStyle.copyWith(fontSize: 24),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Information",
                style: blackColorTextStyle.copyWith(fontSize: 20),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: const Size(140, 40)),
                child: Text(
                  "Sell",
                  style: blackColorTextStyle.copyWith(fontSize: 12),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(minimumSize: const Size(140, 40)),
                child: Text(
                  "Inbox",
                  style: blackColorTextStyle.copyWith(fontSize: 12),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Text(
                "Your Items",
                style: blackColorTextStyle.copyWith(fontSize: 25),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: FoodItem(
                  alamat: "Tangerang",
                  namamakanan: "Iga Bakar",
                  harga: 20000,
                  harga_diskon: 1000,
                  tanggal_expired: "05-05-2024",
                  imagesource: 'assets/IMG_Food3.png',
                  star: 5,
                  namarestoran: "Maknyus",
                  onTap: () {
                    router.goNamed(RouteNames.detailFood);
                  },
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: FoodItem(
                  alamat: "Tangerang",
                  namamakanan: "Bubur",
                  harga: 20000,
                  harga_diskon: 1000,
                  tanggal_expired: "05-05-2024",
                  imagesource: 'assets/IMG_Food2.png',
                  star: 5,
                  namarestoran: "Maknyus",
                  onTap: () {
                    router.goNamed(RouteNames.detailFood);
                  },
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Text(
                    "History",
                    style: blackColorTextStyle.copyWith(fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                  _buildHistoryItem("Bakso", "Rp.1200"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHistoryItem(String itemName, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemName,
                  style: blackColorTextStyle,
                ),
                Text(
                  price,
                  style: blackColorTextStyle.copyWith(color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
