import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ToppingCard extends StatelessWidget {
  const ToppingCard({
    super.key,
    required this.imagepath,
    required this.title,
    this.onadd,
  });
  final String imagepath;
  final String title;
  final void Function()? onadd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 110,
      decoration: BoxDecoration(
        color: const Color(0xFF3B2E2E),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            color: Colors.grey.shade300,
            offset: Offset(3, 3),
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          // الصورة فوق
          Positioned(
            top: -1,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                imagepath, // غيّر المسار حسب الصورة عندك
                width: 70,
                fit: BoxFit.contain,
              ),
            ),
          ),

          // النص + علامة +
          Positioned(
            bottom: 12,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                GestureDetector(
                  onTap: onadd,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.red,
                    child: Icon(Icons.add, size: 16, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
