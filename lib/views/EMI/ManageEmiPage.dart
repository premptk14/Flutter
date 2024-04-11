import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hello_world/views/EMI/EligibleTransactionPage.dart';
import 'package:hello_world/views/EMI/ConvertToEmiPage.dart';

import 'package:hello_world/widgets/EMI/EmiWidget.dart';
import 'package:hello_world/widgets/EMI/EachEligibleEMI.dart';

class ManageEmiPage extends StatelessWidget {
  const ManageEmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Manage EMI',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black12,
          elevation: 10.0,
          shadowColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const TotalTransaction(),
            const Padding(
              padding: EdgeInsets.only(left: 22.0, top: 22.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Text(
                      'Select to convert into EMIs',
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
            Expanded(
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                              left: 27.0, top: 22.0, bottom: 8.0, right: 27.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                child: Text(
                                  'Eligible Transactions',
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
                        const SizedBox(height: 11),
                        const EligibleTransaction(
                            transactionText: "Amazon Purchase",
                            amountText: "4234.13",
                            ),
                        const EligibleTransaction(
                            transactionText: "Myntra Pvt Ltd",
                            amountText: "9012",
                            ),
                        const EligibleTransaction(
                            transactionText: "Zepto Bangalore",
                            amountText: "10234",
                            ),
                        GestureDetector(
                          onTap: () {
                            Get.to(const EligibleTransactionPage());
                          },
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 12),
                            decoration: ShapeDecoration(
                              color: const Color(0xFF262626),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: const Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    'View all Eligible Transactions',
                                    style: TextStyle(
                                      color: Color(0xFFA6A6A6),
                                      fontSize: 14,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0.11,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  child: Icon(Icons.arrow_forward_ios, color: Color(0xFFA6A6A6)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Get.to(() => const ConvertToEmiPage());
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFFE3B6)),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: Container(
                    margin:
                        const EdgeInsets.all(15.0), // Increased margin to 8.0
                    child: const Text(
                      'Convert to EMI',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 0.09,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
