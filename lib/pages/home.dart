import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const GetMaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Get.to(const WebPage(url: 'https://scalablelp-green-qa.rupeek.co/lp/cards/app/retention/limit-increase', token: 'eyJhbGciOiJSUzUxMiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2MDQwOGY5YTljYWE3ZjY0YWI4YWZmYiIsInNlc3Npb25JZCI6ImY2ZDVjMmNlLWUxNzItNDNhNS04YzA0LWQ4OGRkMzRjMWIxYyIsImlhdCI6MTcxMTU0MDQ3NCwiZXhwIjozNjAzNzAwNDc0LCJhdWQiOiJydXBlZWsuY29tIiwiaXNzIjoicnVwZWVrLmNvbSJ9.YslR_1Lj6m9I6GBlWVDAMdQpwbC4poCca9DB4AQb2X7FEFRsWRV_b6XoF44GEqnfcyIQdSW7ju_OU-M2uKDn05-uY4QfhuMYK5Kqh0MbTjSsLnj7kssRgHrqFCaSCmzpoD4Vr4AB_-ScDM-tuC77dCHpaauGiSMnvHpLbJa84XEk1IN5h1BLnoHZKSRoyx6901v2xUzPWVlSMZ0y7MbJOpB-gOPM9s5AY233PZeDqCIwpCis1_vg0hPseXbmpEjRfWvhocG-QFJV8R3DutJ52GLRpfQ3gYnjeVma5og975ex47MVw_EwFbqaVlgoQExBT6uwEJl1N9poeSBRef4pwg'));
          },
          child: Container(
            height: 300,
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23.0),
              border: Border.all(
                color: Colors.grey[850]!, // Dark grey color
                width: 1.0,
              ),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.black, Colors.grey[850]!],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShaderMask(
                          shaderCallback: (Rect bounds) {
                            return const LinearGradient(
                              colors: [Color(0xFFFFEAAA), Color(0xFFFFFFAA), Color(0xFFFFEAAA)],
                              stops: [0.0, 0.5, 1.0],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ).createShader(bounds);
                          },
                          child: const Text(
                            'Increase your credit limit',
                            style: TextStyle(fontSize: 25.0, color: Color(0xFFFFC86D)),
                          ),
                        ),
                        const Text(
                          'Prepare for any emergency',
                          style: TextStyle(fontSize: 20.0, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/limitIncrease.svg',
                    width: 130.0,
                    height: 130.0,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10.0),
                  child: const Text(
                    '₹ 20000',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WebPage extends StatefulWidget {
  final String url;
  final String token;

  const WebPage({super.key, required this.url, required this.token});

  @override
  State<WebPage> createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..clearCache()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {},
        onPageStarted: (String url) {},
        onPageFinished: (String url) async {},
      ))
      ..loadRequest(
        Uri.parse(widget.url),
        headers: {'token': widget.token},
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Increase your limit', style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.black
        ),
        body: WebViewWidget(
          controller: controller,
        )
    );
  }
}
