import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EligibleTransaction extends StatelessWidget {
  final String transactionText;
  final String amountText;

  const EligibleTransaction({
    super.key,
    required this.transactionText,
    required this.amountText,
  });

  @override
  Widget build(BuildContext context) {
    final isChecked = false.obs;
    return Column(
      children: [
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
        Padding(
          padding: const EdgeInsets.only(
              left: 15.0, top: 10.0, bottom: 10.0, right: 15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () { },
                child: Obx(() => Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: isChecked.value ? Colors.white : Colors.transparent,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                        width: 2,
                        color: Color(0xFFF2F2F2),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                )),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12.0, top: 7.0, bottom: 7.0, right: 12.0),
                  child: Text(
                    transactionText,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                    softWrap: true,
                  ),
                ),
              ),
              Text(
                '₹ $amountText',
                style: const TextStyle(
                  color: Color(0xFFF2F2F2),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                  height: 0.09,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
