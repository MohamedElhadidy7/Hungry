import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custom_text.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    super.key,
    required this.image,
    required this.title,
    required this.desc,
    required this.rate,
  });
  final String image, title, desc, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset(image, width: 120, height: 120)),
            Gap(15),
            CustomText(text: title, fontWeight: FontWeight.bold),
            CustomText(text: desc),
            CustomText(text: '⭐ $rate'),
          ],
        ),
      ),
    );
  }
}
