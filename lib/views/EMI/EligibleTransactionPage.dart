import 'package:flutter/material.dart';
import 'package:hello_world/widgets/EMI/EachEligibleEMI.dart';

class EligibleTransactionPage extends StatelessWidget {
  const EligibleTransactionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Eligible Transactions',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black12,
          elevation: 10.0,
          shadowColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        body: Container(
            margin: const EdgeInsets.all(10.0),
            padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 22),
            decoration: ShapeDecoration(
              color: const Color(0xFF262626),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: ListView(
              shrinkWrap: true,
                padding: const EdgeInsets.all(8),
                children: const <Widget>[
                  EligibleTransaction(
                    transactionText: "Zepto Bangalore",
                    amountText: "10234",
                  ),
                  EligibleTransaction(
                    transactionText: "Amazon Pvt Ltd",
                    amountText: "2134",
                  ),
                ])));
  }
}
