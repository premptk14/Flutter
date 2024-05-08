import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TestingPage extends StatelessWidget {
  const TestingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/images/gift_icon.svg',
              ),
              const SizedBox(
                width: 4.0,
              ),
              const Text(
                'My Rewards & offers',
                style: TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 107.0,
                    // width: 200.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF262626),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Container(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const SizedBox(height: 16),
                                const Text(
                                  "120+ offers at",
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  softWrap: true,
                                ),
                                const SizedBox(height: 12),
                                Image.asset(
                                  'assets/images/visa_brand.png', // Set the width of the SVG image
                                  height: 24, // Set the height of the SVG image
                                ),
                                const SizedBox(height: 35), // Add space here
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/magic_hat.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
              const SizedBox(width: 15),
              Expanded(
                  flex: 1,
                  child: Container(
                    height: 107.0,
                    decoration: BoxDecoration(
                      color: const Color(0xFF262626),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Expanded(
                          flex: 7,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(height: 16),
                                      Text(
                                        "1gm Gold Coin",
                                        style: TextStyle(
                                          fontSize: 14.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                        ),
                                        softWrap: true,
                                      ),
                                      SizedBox(height: 12),
                                      Text(
                                        "Min: ₹10,000 spends achieved: 2/3 ",
                                        style: TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      SizedBox(height: 25), // Add space here
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Stack(
                            fit: StackFit.expand,
                            children: [
                              Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Image.asset(
                                  'assets/images/gift.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 15.0,
          ),

          Row(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: const Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(height: 16),
                                  Text(
                                    "1gm Gold Coin",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    softWrap: true,
                                  ),
                                  SizedBox(height: 12),
                                  Text(
                                    "Min: ₹10,000 spends achieved: 2/3 ",
                                    style: TextStyle(
                                      fontSize: 10.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: 19),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    'assets/images/gift.png',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Container(
                        color: Colors.black26,
                        child: Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  "View Rewards",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: const Color(0xFFEEE3B6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Image.asset(
                                  'assets/images/arrow-right.png',
                                  height: 16.0,
                                ),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF262626),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            flex: 7,
                            child: Container(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  const SizedBox(height: 15),
                                  const Text(
                                    "120+ offers at",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    softWrap: true,
                                  ),
                                  const SizedBox(height: 15),
                                  Image.asset(
                                    'assets/images/visa_brand.png', // Set the width of the SVG image
                                    height: 24, // Set the height of the SVG image
                                  ),
                                  const SizedBox(height: 22),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 3,
                              child: Container(
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Image.asset(
                                    'assets/images/magic_hat.png',
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              )),
                        ],
                      ),
                      Container(
                        color: Colors.black26,
                        child: Padding(
                            padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
                            child: Row(
                              children: [
                                Text(
                                  "View offers",
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: const Color(0xFFEEE3B6),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Image.asset(
                                  'assets/images/arrow-right.png',
                                  height: 16.0,
                                ),
                              ],
                            )
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 15.0,
          ),
          Container(
            width: 200.0,
            decoration: BoxDecoration(
              color: const Color(0xFF262626),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 7,
                      child: Container(
                        color: Colors.red,
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(height: 16),
                            const Text(
                              "120+ offers at",
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                              softWrap: true,
                            ),
                            const SizedBox(height: 12),
                            Image.asset(
                              'assets/images/visa_brand.png', // Set the width of the SVG image
                              height: 24, // Set the height of the SVG image
                            ),
                            const SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.yellow,
                          // child: Align(
                          //   alignment: Alignment.bottomRight,
                          //   child: Image.asset(
                          //     'assets/images/magic_hat.png',
                          //     fit: BoxFit.scaleDown,
                          //   ),
                          // ),
                        )),
                  ],
                ),
                Container(
                  color: Colors.black26,
                  child: Padding(
                    padding: EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
                    child: Row(
                      children: [
                        Text(
                          "View Rewards",
                          style: TextStyle(
                            fontSize: 12.0,
                            color: const Color(0xFFEEE3B6),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Image.asset(
                          'assets/images/arrow-right.png',
                          height: 16.0,
                        ),
                      ],
                    )
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
