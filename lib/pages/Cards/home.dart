import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      backgroundColor: Colors.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 30, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/icons/ErrorSymbol.svg',
                  height: 55,
                  width: 55,
                ),
                const SizedBox(height: 10), // Add some spacing between the image and text
                const Text(
                  'Are you sure you want to release?',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 2), // Add some spacing between the text
                const Text(
                  'You’ll lose your rewards and benefits',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30), // Add some spacing between the image and text
                const CustomCard(
                  imagePath: 'assets/icons/GoldCoin.svg',
                  text: '1gm Gold Coin',
                  subtext: 'Reward on card usage',
                ),
                const CustomCard(
                  imagePath: 'assets/icons/CibilScore.svg',
                  text: '750+',
                  subtext: 'Improve your CIBIL Score',
                ),
                const CustomCard(
                  imagePath: 'assets/icons/Locker.svg',
                  text: 'Save ₹7500/yr',
                  subtext: 'On locker charges',
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10.0),
                  child: InkWell(
                    onTap: () {
                      // Handle button tap
                    },
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                      height: 200.0,
                      padding: const EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: Color(0xffFFE3B6), // Gold color
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icons/CibilScore.svg',
                              height: 20,
                              width: 20,
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Your Button Text',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                    ),
                  ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBar() {
  return AppBar(
    backgroundColor: Colors.black,
    leading: GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        alignment: Alignment.center,
        child: Image.asset(
          'assets/icons/backButton.png',
          height: 25,
          width: 25,
        ),
      ),
    ),
  );
}

class CustomCard extends StatelessWidget {
  final String imagePath;
  final String text;
  final String subtext;

  const CustomCard({
    super.key,
    required this.imagePath,
    required this.text,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xff261B1D), Color(0xff1D1617)],
          ),
          borderRadius: BorderRadius.circular(10.0), // Add border radius here
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children: [
              SvgPicture.asset(
                imagePath,
                height: 66,
                width: 52,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 20,
                        height: 1.5,
                        fontWeight: FontWeight.w600,
                        color: Colors.amber, // Change text color to golden
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtext,
                      style: const TextStyle(
                        fontSize: 16,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        color: Colors.white70, // Change text color to golden
                      ),
                    ),
                  ],
                ),
              ),
              SvgPicture.asset(
                'assets/icons/rightButton.svg',
                height: 24,
                width: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
