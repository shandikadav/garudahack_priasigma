import 'package:flutter/material.dart';

class ItemsCarousel extends StatelessWidget {
  final String imagesource;
  final VoidCallback? onTap;

 const ItemsCarousel({
  super.key,
  this.onTap,
  required this.imagesource,
 });
  @override
  Widget build(BuildContext context) {
    return Image.asset(imagesource,
    fit: BoxFit.cover,
    );
  }
}