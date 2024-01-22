import 'package:duplicate/Screens/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            TextFormField(),
            SizedBox(height: 20,),
            TextFormField(
              obscureText: true,
            ),
            SizedBox(height: 30,),
            ElevatedButton(
              onPressed: (){},
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
    );
  }
}
