import 'package:corvit_week_eve/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:typewritertext/typewritertext.dart';


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
            child: TypeWriterText(
              repeat: true,
              duration: Duration(milliseconds: 100),
              text: Text(
                'Make \nYour Style \nCome \nTrue Here',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          Positioned(
            bottom: 0,
            child: RotatedBox(
              quarterTurns: -1,
              child: Text(
                'FASHION',
                style: GoogleFonts.poppins(
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
            child: Image.asset(
              'assets/images/shoes.png',
              width:MediaQuery.of(context).size.width*0.9,
            ),
          ),
          Positioned(
              right: 30,
              bottom: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff2d4283),
                ),
                onPressed: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MyApp() )
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                  child: Text(
                    'Next',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
