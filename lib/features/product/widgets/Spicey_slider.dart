import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_text.dart';

class SpiceySlider extends StatelessWidget {
  const SpiceySlider({super.key, required this.value, this.onChanged});
  final double value;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset('assets/test/sandwich.png', height: 200),
        Spacer(),
        Column(
          children: [
            CustomText(
              text:
                  'Customize Your Burger\n to Your Tastes.\n Ultimate Experience',
            ),

            Slider(
              min: 0,
              max: 1,
              value: value,
              onChanged: onChanged,
              activeColor: AppColors.primarycolor,
              inactiveColor: Colors.grey.shade300,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomText(text: '🥶'),
                Gap(100),
                CustomText(text: '🌶️'),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
