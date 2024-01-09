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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Image.asset(
                'assets/images/Corvit Logo.png',
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(),
              SizedBox(
                height: 20,
              ),
              TextFormField(),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: (){},
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(

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
