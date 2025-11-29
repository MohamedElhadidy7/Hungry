import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/product/widgets/Spicey_slider.dart';
import 'package:hungry/features/product/widgets/Topping_card.dart';
import 'package:hungry/shared/Custom_button.dart';
import 'package:hungry/shared/Custom_text.dart';

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView({super.key});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  double value = .7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },

          child: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpiceySlider(
                value: value,
                onChanged: (v) => setState(() => value = v),
              ),
              Gap(50),
              CustomText(
                text: 'Toppings',
                size: 20,
                fontWeight: FontWeight.bold,
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: ToppingCard(
                        imagepath: 'assets/test/tomato.png',
                        title: 'Tomato',
                        onadd: () {},
                      ),
                    );
                  }),
                ),
              ),
              Gap(50),
              CustomText(
                text: 'Side Options',
                size: 20,
                fontWeight: FontWeight.bold,
              ),
              Gap(20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(4, (index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ToppingCard(
                        imagepath: 'assets/test/tomato.png',
                        title: 'Tomato',
                        onadd: () {},
                      ),
                    );
                  }),
                ),
              ),

              Gap(200),
            ],
          ),
        ),
      ),

      bottomSheet: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade800,
              blurRadius: 10,
              offset: Offset(0, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: 'Total',
                    size: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: '\$18.9',
                    size: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              Container(
                height: 60,
                child: CustomButton(text: 'Add to Cart', onTap: () {}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
