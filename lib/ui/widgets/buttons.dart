import 'package:flutter/material.dart';
import 'package:garudahack_priasigmas/shared/theme/themes.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  const PrimaryButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
          color: blackColor,
          borderRadius: BorderRadius.circular(28),
        
        ),
        child: Center(
          child: Text(
            title,
            style: whiteColorTextStyle.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
