import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:corvit_week_eve/shoes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        duration: Duration(seconds: 4),
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
          height: 200,
          width: 200,
          child: Image.asset("assets/images/burger.png"),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        nextScreen: const Shoes(),
      ),
    );
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            'https://img.freepik.com/free-photo/ice-cream-cone-with-flowers_23-2148860006.jpg',
            width: 480,
            height: 500,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,bottom: 5,top: 12),
            child: Text(
              'Strawberry Flavour',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 0),
            child: Text(
              'Icecream from fresh fruits',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.purple.shade300
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 5),
            child: Text(
              'Made by blending in fresh strawberries or strawberry flavoring with eggs, vanilla, cream and sugar to use icecream ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12,top: 15),
            child: Text(
              'Quantity',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple.shade300,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 28,
                  height: 28,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple.shade300,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.purple.shade300,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$ 10',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                    color: Colors.purple.shade300,
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple.shade300,
                    elevation: 6,
                  ),
                  onPressed: (){},
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}





