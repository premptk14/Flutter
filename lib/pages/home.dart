import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 400,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Colors.grey[850]!],
            ),
          ),
          // padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Increase your credit limit',
                        style: TextStyle(fontSize: 25.0, color: Colors.orangeAccent),
                      ),
                      Text(
                        'Prepare for any emergency',
                        style: TextStyle(fontSize: 20.0, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: SvgPicture.asset('assets/icons/limitIncrease.svg'),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: const Text(
                  '20000',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}