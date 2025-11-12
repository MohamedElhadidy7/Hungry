import 'package:flutter/material.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onTap});
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        decoration: BoxDecoration(
          color: AppColors.primarycolor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: CustomText(text: text, color: Colors.white),
      ),
    );
  }
}
