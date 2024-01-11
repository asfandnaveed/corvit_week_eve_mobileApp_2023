import 'package:corvit_week_eve/chatScreens/chatscreen.dart';
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

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  bool check = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Corvit Logo.png',
                width: 200,
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: email,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                controller: password,
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){

                    debugPrint('${email.text}');
                    debugPrint('${password.text}');

                    final auth = FirebaseAuth.instance;

                    auth.createUserWithEmailAndPassword(
                        email: email.text,
                        password: password.text
                    );

                  },
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(

                    ),
                  ),
              ),

              ElevatedButton(
                  onPressed: (){
                    final db = FirebaseDatabase.instance.ref();

                    db.child('Students').child('Ahmed').set({
                      "rollNumber":"LH_SH_523",
                      "Address":"Kalma Chonck",
                      "id":"3",
                      "FatherName":"Hammad",
                    });
                  },
                  child: Text('CREATE DATA !')
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                  onPressed: (){
                    check==false? check=true : check=false;
                   setState(() {

                   });

                  },
                  child: Text('Change Color'),
              ),
              Text(
                'Hello Corvit',
                style: GoogleFonts.poppins(
                  color: check==false?Colors.green:Colors.red,
                ),
              ),

              ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=> ChatScreen())
                    );
                  },
                  child: Text('Next Screen ')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
