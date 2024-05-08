import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VisaReward extends StatelessWidget {
  const VisaReward({Key? key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/images/fire_icon.svg'),
            const SizedBox(
              width: 4.0,
            ),
            const Expanded(
              flex: 7,
              child: Text(
                'My Offers',
                style: TextStyle(
                  color: Color(0xFFA6A6A6),
                  fontSize: 16,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 16.0,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: Colors.grey[850] ?? Colors.grey, // Dark grey color
              width: 1.0,
            ),
            color: const Color(0xFF262626),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                flex: 9,
                child: Container(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0, bottom: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4.0),
                        child: SvgPicture.asset(
                          'assets/images/visa_header_image.svg',
                          width: 30, // Set the width of the SVG image
                          height: 30, // Set the height of the SVG image
                        ),
                      ),
                      const SizedBox(height: 8), // Add space here
                      const Text(
                        "Top Offers on your Visa Credit Cards",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(height: 12), // Add space here
                      Row(
                        children: [
                          const Text(
                            "Explore",
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFFFFE3B6),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Container(
                            padding: const EdgeInsets.all(4.0),
                            child: SvgPicture.asset(
                              'assets/images/arrow-right.svg',
                              width: 10,
                              height: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Image.asset('assets/images/box.png', fit: BoxFit.fill,),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
