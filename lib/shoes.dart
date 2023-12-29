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
                  Color(0xff222e5b),
                  Color(0xff2d4283),
                  Color(0xffA0AACa),

                ],
              )
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height*0.12,
            left: MediaQuery.of(context).size.width*0.3,
            child: Text(
              'Make \nYour Style \nCome \nTrue Here',
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                'FASHION',
                style: TextStyle(
                  fontSize: 90,
                  color: Colors.white24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 80,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width*0.27,
            color: Colors.white12,
          ),

          Positioned(
            top: MediaQuery.of(context).size.height*0.48,
            right: 0,
            child: Image.network(
              'https://i.ibb.co/yFcXHVq/shoes.png',
              width:MediaQuery.of(context).size.width*0.9,
            ),
          ),
        ],
      ),
    );
  }
}
