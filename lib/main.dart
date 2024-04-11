import 'package:flutter/material.dart';
import 'package:hello_world/views/EMI/ManageEmiPage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        home: ManageEmiPage());
  }
}
