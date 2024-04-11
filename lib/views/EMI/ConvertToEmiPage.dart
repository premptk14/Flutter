import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConvertToEmiPage extends StatelessWidget {
  const ConvertToEmiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Convert to EMI',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black12,
          elevation: 10.0,
          shadowColor: Colors.black,
          iconTheme: const IconThemeData(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        body: const Column(children: [
          Text("hello"),
        ]));
  }
}
