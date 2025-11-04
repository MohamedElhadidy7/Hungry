import 'package:flutter/material.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/shared/Custom_text.dart';

class FoodCategory extends StatefulWidget {
  FoodCategory({
    super.key,
    required this.Category,
    required this.selectedindex,
  });
  final int selectedindex;
  final List Category;

  @override
  State<FoodCategory> createState() => _FoodCategoryState();
}

class _FoodCategoryState extends State<FoodCategory> {
  late int selectedindex;
  @override
  void initState() {
    selectedindex = widget.selectedindex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(widget.Category.length, (i) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = i;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                color: selectedindex == i
                    ? AppColors.primarycolor
                    : Color(0xffF3F4F6),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: CustomText(
                text: widget.Category[i],
                fontWeight: FontWeight.w500,
                color: selectedindex == i ? Colors.white : Colors.black,
              ),
            ),
          );
        }),
      ),
    );
  }
}
