import 'package:duplicate/Screens/auth/login.dart';
import 'package:duplicate/Screens/home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  TextEditingController inputEmail = TextEditingController();
  TextEditingController inputPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                'Register Screen',
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
                  final auth = FirebaseAuth.instance;

                  auth.createUserWithEmailAndPassword(
                      email: inputEmail.text,
                      password: inputPassword.text,
                  );

                  if(auth.currentUser !=null){
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>HomePage())
                    );
                  }

                },
                child: Text('Sign Up'),
              ),
              SizedBox(height: 30,),

              InkWell(
                onTap: (){
                 Navigator.pop(context);
                },
                child: Text(
                  'Login',
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
