import 'package:flutter/material.dart';

class MonthlySpendWidget extends StatelessWidget {
  const MonthlySpendWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(10.0),
          padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 22),
          decoration: ShapeDecoration(
            color: const Color(0xFF262626),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'May 2023',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 11),
              Container(
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      strokeAlign: BorderSide.strokeAlignCenter,
                      color: Color(0x19F2F2F2),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 11),
              const EachTransaction(title: "ATM Withdrawal", timeDate: "Today 6:54 PM",amount: "30000"),
              const EachTransaction(iconImage: Icons.shopping_bag, title: "Amazon", timeDate: "Yesterday 1:20 AM",amount: "12500"),
              const EachTransaction(iconImage: Icons.attach_money_rounded, title: "Myntra Pvt Ltd", timeDate: "12 March 12:54 PM",amount: "1200"),
            ],
          ),
        ),
      ],
    );
  }
}

class EachTransaction extends StatelessWidget {
  final IconData iconImage;
  final String title;
  final String timeDate;
  final String amount;

  const EachTransaction({
    super.key,
    this.iconImage = Icons.shopify,
    required this.title,
    required this.timeDate,
    required this.amount,
  });

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          iconImage,
          color: Colors.orange,
          size: 30.0,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, top: 7.0, bottom: 7.0, right: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                  softWrap: true,
                ),
                Text(
                  timeDate,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                  ),
                  softWrap: true,
                ),
              ],
            ),
          ),
        ),
        Text(
          '₹ $amount',
          style: const TextStyle(
            color: Color(0xFFF2F2F2),
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0.09,
          ),
        ),
      ],
    );
  }
}