import 'package:flutter/material.dart';
import 'package:hello_world/pages/TransactionOnEMI.dart';
import 'package:hello_world/pages/SelectEligibleTransaction.dart';

class ManageEmiPage extends StatelessWidget {
  const ManageEmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TotalTransaction(),
        const SelectEligibleTransaction(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {
                // Add your logic here
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFE3B6)),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              child: Container(
                margin: const EdgeInsets.all(15.0), // Increased margin to 8.0
                child: const Text(
                  'Continue',
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
    );
  }
}