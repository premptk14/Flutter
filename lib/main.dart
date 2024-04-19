import 'package:flutter/material.dart';
import 'package:hello_world/pages/temp.dart';

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
          title: const Text('Gold Card', style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.black12,
          elevation: 10.0,
          shadowColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: TempPage(),
      ),
    );
  }
}
