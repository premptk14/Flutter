import 'package:flutter/material.dart';
import 'package:hello_world/widgets/EMI/MonthlySpend.dart';

class OngoingEmiPage extends StatelessWidget {
  const OngoingEmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'On going EMIs',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black12,
          elevation: 10.0,
          shadowColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        body:
            ListView(padding: const EdgeInsets.all(8), children: const <Widget>[
              MonthlySpendWidget(),
              MonthlySpendWidget(),
        ]));
  }
}
