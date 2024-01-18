import 'package:corvit_week_eve/chatScreens/chatscreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class ChatUsers extends StatefulWidget {
  const ChatUsers({super.key});

  @override
  State<ChatUsers> createState() => _ChatUsersState();
}

class _ChatUsersState extends State<ChatUsers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                    ),
                    child: Image.asset(
                        'assets/images/Corvit Logo.png',
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Center(
                    child: Text('Chat room',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Icon(
                    Icons.alarm,
                  ),
                ),

              ],
            ),

            TextFormField(
              decoration: InputDecoration(
                hintText: 'Type Your Message Here.....'
              ),
            ),


            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> ChatScreen())
                  );
                },
                child: Text('Next')
            ),

          ],
        ),
      ),
    );
  }
}
