import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/Home/widgets/card_item.dart';
import 'package:hungry/features/Home/widgets/food_category.dart';
import 'package:hungry/features/Home/widgets/search_field.dart';
import 'package:hungry/features/Home/widgets/user_header.dart';
import 'package:hungry/shared/Custom_text.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List Category = ['All', 'Combo', 'Sliders', 'Classic'];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: [
                    Gap(70),
                    UserHeader(),
                    Gap(20),
                    SearchField(),
                    Gap(25),
                    FoodCategory(
                      Category: Category,
                      selectedindex: selectedindex,
                    ),
                    Gap(12),
                  ],
                ),
              ),
            ),

            SliverPadding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 15),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: 6,
                  (context, i) => CardItem(
                    image: 'assets/test/cardimage.png',
                    title: 'Cheeseburger',
                    desc: 'Wendy"s Burger',
                    rate: '4.9',
                  ),
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .69,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
