import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
    this.color,
    this.fontWeight,
    this.size,
  });
  final String text;
  final Color? color;
  final FontWeight? fontWeight;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      textScaler: TextScaler.linear(1.0),
      overflow: TextOverflow.ellipsis,
      maxLines: 2,
      text,
      style: TextStyle(fontSize: size, fontWeight: fontWeight, color: color,),
    );
  }
}
