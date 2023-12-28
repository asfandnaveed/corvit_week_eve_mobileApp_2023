import 'package:flutter/material.dart';


class Shoes extends StatelessWidget {
  const Shoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xff101321),
                  Color(0xff7586C9),
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text('Hello Corvit'),
          ),
        ],
      ),
    );
  }
}
