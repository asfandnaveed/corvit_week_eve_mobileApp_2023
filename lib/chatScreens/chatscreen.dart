import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<String> messages = [
    'Hello How are you',
    'I am fine what about you',
    'How is the weather today?',
    'Its really cold and visibility is very less',
    'Stay home and be safe !!. ',
    'You too !! Bye take care.',
  ];

  List<bool> isSender = [
    true,
    false,
    true,
    false,
    true,
    false,
  ];

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

                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.8,
                    child: ListView.builder(
                      itemCount: messages.length,
                      itemBuilder: (context,index){
                        return ChatBubble(
                            message: messages[index],
                            sender: isSender[index],
                        );
                      },
                    ),
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
