import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_text.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              height: 40,
              'assets/logo/logoo.svg',
              color: AppColors.primarycolor,
            ),
            Gap(5),
            CustomText(
              text: 'Hello, Mohamed Elhadidy',
              size: 16,
              color: Colors.grey.shade500,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(radius: 30,),
      ],
    );
  }
}
