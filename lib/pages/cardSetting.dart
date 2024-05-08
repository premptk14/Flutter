import 'package:flutter/material.dart';

class CardSettingPage extends StatelessWidget {
  const CardSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF333333),
      child: Center(
// Center is a layout widget. It takes a single child and positions it
// in the middle of the parent.
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              const Divider(
                thickness: 0.2,
                color: Color(0xFFF2F2F2),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Image.asset('assets/images/card_usage_setting.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Image.asset('assets/images/set_atm_pin.png')),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    child: Image.asset('assets/images/lock_card.png')),
              ),
            ],
          )
      ),
    );
  }
}



