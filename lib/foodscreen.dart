import 'package:corvit_week_eve/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodScreen extends StatefulWidget {
   FoodScreen({super.key});

  @override
  State<FoodScreen> createState() => _FoodScreenState();
}

class _FoodScreenState extends State<FoodScreen> {
  int x = 0;

  double y = 0.2;

  String z = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2b3240),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
          child: Column(
            children: [
              Row(

                children: [
                  Container(
                    height: 55,
                    width: 55,
                    child: CircleAvatar(
                      radius: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'assets/images/profile-19.jpg',

                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Deliver to',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Home , Ji Kebneran 14 B',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Stack(
                    children: [
                      Icon(
                        Icons.notification_important_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Positioned(
                        right: 0,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 8,
                          child: Text(
                            '1',
                            style: GoogleFonts.acme(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff2f3747),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'What do you want to eat?',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.white,
                    ),
                    prefixIcon: Icon(
                        Icons.search,
                      color: Colors.white,
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),

              Row(
                children: [
                  ElevatedButton(
                      onPressed: (){
                        if(x>0){
                          x--;
                          setState(() {

                          });
                        }
                      },
                      child: Text(
                        '-',
                        style: GoogleFonts.podkova(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${x}',
                    style: GoogleFonts.podkova(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      x++;
                      setState(() {

                      });
                    },
                    child: Text(
                      '+',
                      style: GoogleFonts.podkova(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> RegisterScreen())
                    );
                  },
                  child: Text('Next'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
