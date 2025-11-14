import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_button.dart';
import 'package:hungry/shared/Custom_text.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.image,
    required this.text,
    required this.desc,
    this.onAdd,
    this.onminus,
    this.onremove,
    required this.number,
  });
  final String image, text, desc;
  final int number;
  final Function()? onAdd;
  final Function()? onminus;
  final Function()? onremove;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(image, width: 100),
                CustomText(text: text, fontWeight: FontWeight.bold),
                CustomText(text: desc),
              ],
            ),
            Spacer(),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: onAdd,
                      child: CircleAvatar(
                        child: Icon(CupertinoIcons.add, color: Colors.white),
                        backgroundColor: AppColors.primarycolor,
                      ),
                    ),
                    Gap(12),
                    CustomText(
                      text: "$number",
                      fontWeight: FontWeight.w400,
                      size: 20,
                    ),
                    Gap(12),
                    GestureDetector(
                      onTap: onminus,
                      child: CircleAvatar(
                        child: Icon(CupertinoIcons.minus, color: Colors.white),
                        backgroundColor: AppColors.primarycolor,
                      ),
                    ),
                  ],
                ),
                Gap(30),
                CustomButton(text: 'Remove', width: 120, onTap: onremove),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
