import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custom_button.dart';
import 'package:hungry/shared/Custom_text.dart';

class OrderhistoryView extends StatelessWidget {
  const OrderhistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 80),
          itemCount: 3,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/test/cardimage.png',
                              width: 100,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            CustomText(
                              text: 'Hamburger ',
                              fontWeight: FontWeight.bold,
                            ),
                            CustomText(text: 'Quantity:2'),
                            CustomText(text: 'price:\$20'),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    CustomButton(text: 'Order Again', width: double.infinity),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
