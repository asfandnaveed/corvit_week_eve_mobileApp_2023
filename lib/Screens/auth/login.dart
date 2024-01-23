import 'package:duplicate/Screens/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
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
              TextFormField(),
              SizedBox(height: 20,),
              TextFormField(
                obscureText: true,
              ),
              SizedBox(height: 30,),
              ElevatedButton(
                  onPressed: (){},
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
