import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/core/Constant/app_colors.dart';
import 'package:hungry/features/checkout/Widgets/order_details.dart';
import 'package:hungry/shared/Custom_button.dart';
import 'package:hungry/shared/Custom_text.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  String selectedMetod = 'Cash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(20),
              CustomText(
                text: 'Order Summary',
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              Gap(10),
              OrderDetails(
                order: '18,5',
                taxes: '3,50',
                fees: '40,33',
                total: '100,0',
              ),
              CustomText(
                text: 'Payment Methods',
                size: 20,
                fontWeight: FontWeight.w500,
              ),
              Gap(15),
              //Cash
              ListTile(
                onTap: () {
                  setState(() {
                    selectedMetod = 'Cash';
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                tileColor: Color(0xff3C2F2F),
                leading: Image.asset('assets/icons/dollarIcons.png', width: 50),
                title: CustomText(
                  text: 'Cash on delivery',
                  color: Colors.white,
                ),
                trailing: Radio(
                  activeColor: Colors.white,
                  value: 'Cash',
                  groupValue: selectedMetod,
                  onChanged: (v) {
                    setState(() {
                      selectedMetod = v!;
                    });
                  },
                ),
              ),
              Gap(10),
              //Visa
              ListTile(
                onTap: () {
                  setState(() {
                    selectedMetod = 'Visa';
                  });
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(8),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 2,
                ),
                tileColor: Colors.blue.shade900,
                leading: Image.asset(
                  'assets/icons/visa.png',
                  width: 50,
                  height: 60,
                ),
                title: CustomText(text: 'Debit card', color: Colors.white),
                subtitle: CustomText(
                  text: '**** **** 2345',
                  color: Colors.white,
                ),
                trailing: Radio(
                  activeColor: Colors.white,
                  value: 'Visa',
                  groupValue: selectedMetod,
                  onChanged: (v) {
                    setState(() {
                      selectedMetod = v!;
                    });
                  },
                ),
              ),
              Gap(5),
              Row(
                children: [
                  Checkbox(
                    value: true,
                    onChanged: (v) {},
                    activeColor: Color(0xffEF2A39),
                  ),
                  CustomText(text: 'Save card details for future payments'),
                ],
              ),
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
                child: CustomButton(
                  text: 'Pay Now',
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return Dialog(
                          backgroundColor: Colors.transparent,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 200,
                            ),
                            child: Container(
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade800,
                                    blurRadius: 10,
                                    offset: Offset(0, 1),
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundColor: AppColors.primarycolor,
                                    child: Icon(
                                      CupertinoIcons.check_mark,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                  ),
                                  Gap(10),
                                  CustomText(
                                    text: 'Success!',
                                    color: AppColors.primarycolor,
                                    size: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  Gap(8),
                                  CustomText(
                                    text:
                                        'Your payment was successful\n A receipt for this purchase \n has been  sent to your email.',
                                    color: Colors.grey.shade500,
                                  ),
                                  Gap(12),
                                  CustomButton(
                                    text: 'Close',
                                    width: double.infinity,
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
