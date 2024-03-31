import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Flutter App'),
            backgroundColor: Colors.blue,
            elevation: 10.0,
            shadowColor: Colors.black,// Made the title const
          ),
          body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(20.0),
                        color: Colors.orange,
                        child: const Text('child 1')
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      color: Colors.blueAccent,
                      child: const Text('child 2'),
                    ),
                  ],
                ),
                Container(
                    padding: const EdgeInsets.all(20.0),
                    color: Colors.orange,
                    child: const Text('child 1')
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.blueAccent,
                  child: const Text('child 2'),
                ),
                Container(
                  padding: const EdgeInsets.all(30.0),
                  color: Colors.blueGrey,
                  child: const Text('child 3'),
                )
              ]
          )
      );
  }
}
