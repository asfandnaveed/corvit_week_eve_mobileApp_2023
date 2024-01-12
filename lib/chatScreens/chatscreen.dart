import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [

                  ChatBubble(
                    message: 'Hello Corvit',
                    sender: true,
                  ),
                  ChatBubble(
                    message: 'How are you ?',
                    sender: false,
                  ),
                  ChatBubble(
                    message: 'I am fine',
                    sender: true,
                  ),
                  ChatBubble(
                    message: 'What are you upto these days? Its snowing outside.',
                    sender: true,
                  ),


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {

  final message;
  final bool sender;

  const ChatBubble({
    super.key,
    required this.message,
    required this.sender,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment:sender==true? MainAxisAlignment.end :MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color:sender==true?Color(0xfff3375d4) :Color(0xfff0f2f3),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  '${message}',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    color: sender==true?Colors.white:Colors.black
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
