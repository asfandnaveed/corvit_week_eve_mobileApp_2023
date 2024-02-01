import 'package:duplicate/Screens/auth/login.dart';
import 'package:duplicate/Screens/home/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
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
  TextEditingController inputUsername = TextEditingController();

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
                controller: inputUsername,
                decoration: InputDecoration(
                  hintText: "Username"
                ),
              ),
              TextFormField(
                controller: inputEmail,
                decoration: InputDecoration(
                    hintText: "Email"
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                controller: inputPassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Password"
                ),
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                onPressed: () async {
                  final auth = FirebaseAuth.instance;
                  final db = FirebaseDatabase.instance.ref();

                  await auth.createUserWithEmailAndPassword(
                      email: inputEmail.text,
                      password: inputPassword.text,
                  ).then((value){

                    db.child('Users').child(auth.currentUser!.uid).set({
                      "email":inputEmail.text,
                      "password":inputPassword.text,
                      "username":inputUsername.text,
                    });

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>HomePage())
                    );

                  });



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
