import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hungry/shared/Custom_text.dart';

class OrderDetails extends StatelessWidget {
  const OrderDetails({
    super.key,
    required this.order,
    required this.taxes,
    required this.fees,
    required this.total,
  });
  final String order, taxes, fees, total;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        checkoutwidget('Order', order, false, false),
        Gap(10),
        checkoutwidget('Taxes', taxes, false, false),
        Gap(10),
        checkoutwidget('Delivery fees', fees, false, false),
        Gap(10),
        Divider(),
        Gap(10),
        checkoutwidget('Total:', total, true, false),
        Gap(10),
        checkoutwidget('Estimated delivery time:', '15 - 30 mins', true, true),
        Gap(50),
      ],
    );
  }
}

Widget checkoutwidget(title, price, isbold, issmall) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      CustomText(
        text: title,
        size: issmall ? 13 : 15,
        fontWeight: isbold ? FontWeight.bold : FontWeight.w400,
        color: isbold ? Colors.black : Colors.grey.shade600,
      ),

      CustomText(
        text: '$price\$',
        size: issmall ? 13 : 15,
        color: isbold ? Colors.black : Colors.grey.shade600,
        fontWeight: isbold ? FontWeight.bold : FontWeight.w400,
      ),
    ],
  );
}
