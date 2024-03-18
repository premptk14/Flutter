import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Color(0xff1D1617).withOpacity(0.11),
                    blurRadius: 40,
                    spreadRadius: 0.0)
              ]),
              child: TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide.none)),
              ),
            )
          ],
        ));
  }
}

AppBar appBar() {
  return AppBar(
    title: const Text(
      'Breakfast',
      style: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    backgroundColor: Colors.blue,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/icons/backButton.png',
          height: 25,
          width: 25,
        ),
      ),
    ),
    actions: [
      GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: 37,
            child: Image.asset(
              'assets/icons/moreButton.png',
              height: 25,
              width: 25,
            ),
          ))
    ],
  );
}
