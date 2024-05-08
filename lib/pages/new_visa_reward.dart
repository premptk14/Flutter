import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisaReward extends StatelessWidget {
  const VisaReward({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              'My Offers',
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
        Container(
          color: const Color(0xFF262626),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                      const SizedBox(height: 10), // Adjusted space here
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
                          'assets/images/magic_hat.png',
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}