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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff0f2f3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Good Morning, Do you need prescription for asthma medicine ?',
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Flexible(
                        child: Container(
                          padding: const EdgeInsets.all(15.0),
                          decoration: BoxDecoration(
                            color: Color(0xfff3375d4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            'Morning, Thanks.',
                            textAlign: TextAlign.end,
                            style: GoogleFonts.poppins(
                              fontSize: 15,
                              color:Colors.white,
                            ),

                          ),
                        ),
                      ),
                    ],
                  ),

                  ChatBubble(),
                  ChatBubble(),





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
  const ChatBubble({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Container(

                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xfff0f2f3),
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Text(
                  'Good Morning,',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
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
