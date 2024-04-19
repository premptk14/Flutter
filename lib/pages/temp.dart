import 'package:flutter/material.dart';
import 'package:hello_world/controller/countController.dart';
import 'package:get/get.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    var myController = Get.put(CountController());

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Count",
            style: TextStyle(color: Colors.white, fontSize: 40),
          ),
          Obx(() => Text(
            "${myController.count}",
            style: const TextStyle(color: Colors.white, fontSize: 40),
          )),
          GestureDetector(
            onTap: () {
              myController.increaseCount();
            },
            child: Container(
              color: Colors.blue,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              child: const Text(
                "Click to increase count",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}