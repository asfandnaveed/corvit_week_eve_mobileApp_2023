import 'package:duplicate/Screens/auth/login.dart';
import 'package:duplicate/Screens/home/homepage.dart';
import 'package:duplicate/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  runApp(
    MaterialApp(
      home: SplashScreen(),
    ),
  );
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    if(FirebaseAuth.instance.currentUser!=null){
      return HomePage();
    }else{
      return loginScreen();
    }
  }
}



