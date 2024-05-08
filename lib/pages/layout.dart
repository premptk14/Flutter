import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Manage extends StatelessWidget {
  const Manage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        width: double.infinity,
        clipBehavior: Clip.antiAlias,
        margin: const EdgeInsets.only(bottom: 16.0),
        decoration: ShapeDecoration(
          color: Color(0xFF262626),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 14.0, bottom: 0.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      'Manage my card',
                      style: TextStyle(
                        color: Color(0xFFF2F2F2),
                        fontSize: 16,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Text(
                      'View card details and more',
                      style: TextStyle(
                        color: Color(0xFFD8D8D8),
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      children: [
                        Text(
                          'Manage',
                          style: TextStyle(
                            color: Color(0xFFFFE3B6),
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 4.0,),
                        Image.asset(
                          'assets/images/arrow_right.png',
                          height: 20.0,
                          width: 20.0,
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  width: 10.0,
                ),
                Spacer(),
                Image.asset(
                  'assets/images/gift.png',
                  height: 20.0,
                  width: 20.0,
                ),
              ],
            ),
        ),
      );
  }
}
