import 'package:flutter/material.dart';

class SelectEligibleTransaction extends StatelessWidget {
  const SelectEligibleTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            // padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 22),
            decoration: ShapeDecoration(
              color: const Color(0xFF262626),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 27.0, top: 22.0, bottom: 8.0, right: 27.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          'Select eligible transactions to convert into EMIs',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 11),
                EligibleTransaction(
                    transactionText: "Amazon Purchase", amountText: "4234.13"),
                EligibleTransaction(
                    transactionText: "Myntra Pvt Ltd", amountText: "9012"),
                EligibleTransaction(
                    transactionText: "Zepto Bangalore", amountText: "10234"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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
              Container(
                width: 20,
                height: 20,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(
                      width: 2,
                      color: Color(0xFFF2F2F2),
                    ),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
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
