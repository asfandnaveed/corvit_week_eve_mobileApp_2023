import 'package:duplicate/Screens/auth/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/homepage.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {

  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  final auth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Login Screen',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 25
                ),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: inputEmail,
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: inputPassword,
                obscureText: true,
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){

                    auth.signInWithEmailAndPassword(
                        email: inputEmail.text,
                        password: inputPassword.text
                    );

                    if(auth.currentUser !=null){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>HomePage())
                      );
                    }

                  },
                  child: Text('Sign In'),
              ),
              SizedBox(height: 30,),

              InkWell(
                onTap: (){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>RegisterScreen()),
                  );
                },
                  child: Text(
                    'Register',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      color: Colors.blue
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
