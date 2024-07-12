import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class CategoryItems extends StatelessWidget {
  final String title;
  final String iconSource;
  final VoidCallback? onPressed;
  const CategoryItems(
      {super.key,
      required this.title,
      required this.iconSource,
      this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(200),
          ),
          color: whiteColor),
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconSource,
            width: 49,
            height: 49,
          ),
          const SizedBox(
            height: 9,
          ),
          Text(
            title,
            style: blackColorTextStyle.copyWith(
                fontSize: 10, fontWeight: FontWeight.w200),
          )
        ],
      ),
    );
  }
}
