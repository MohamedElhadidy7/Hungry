import 'package:flutter/material.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_text.dart';

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.onTap,
    required this.text,
    this.color,
    this.textcolor,
  });
  final Function()? onTap;
  final String text;
  final Color? color;
  final Color? textcolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white,width: 2),
        ),
        child: Center(
          child: CustomText(
            text: text,
            color: textcolor ?? AppColors.primarycolor,
            fontWeight: FontWeight.w700,
            size: 15,
          ),
        ),
      ),
    );
  }
}
