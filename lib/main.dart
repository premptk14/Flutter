import 'package:flutter/material.dart';
import 'package:hello_world/views/EMI/ManageEmiPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                'Manage EMI',
                style: TextStyle(color: Colors.white),
              ),
              backgroundColor: Colors.black12,
              elevation: 10.0,
              shadowColor: Colors.black,
            ),
            backgroundColor: Colors.black,
            body: const ManageEmiPage()));
  }
}
