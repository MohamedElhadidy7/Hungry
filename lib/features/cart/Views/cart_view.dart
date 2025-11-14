import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/cart/Widgets/Cart_item.dart';
import 'package:hungry/shared/Custom_button.dart';
import 'package:hungry/shared/Custom_text.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  late List<int> quantites;
  final int itemcount = 20;
  @override
  void initState() {
    quantites = List.generate(20, (_) => 1);
    super.initState();
  }

  void onadd(index) {
    setState(() {
      quantites[index]++;
    });
  }

  void onmin(index) {
    setState(() {
      if (quantites[index] > 1) {
        quantites[index]--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView.builder(
          padding: EdgeInsets.only(bottom: 120, top: 80),
          itemCount: itemcount,
          itemBuilder: (context, index) {
            return CartItem(
              image: 'assets/test/cardimage.png',
              text: 'Hamburger ',
              desc: 'Veggie Burger',
              number: quantites[index],
              onAdd: () {
                onadd(index);
              },
              onminus: () {
                onmin(index);
              },
            );
          },
        ),
      ),

      bottomSheet: Container(
        height: 75,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Total',
                  size: 15,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: '\$18.9',
                  size: 20,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            CustomButton(text: 'Checkout', onTap: () {}, width: 120),
          ],
        ),
      ),
    );
  }
}
