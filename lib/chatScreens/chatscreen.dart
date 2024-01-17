import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  TextEditingController input = TextEditingController();

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
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*0.7,
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
              ),
            ),

            Column(
              children: [
                ElevatedButton(
                    onPressed: (){
                      
                      final db  = FirebaseDatabase.instance.ref();
                      
                      db.child('Messages').get().then((value){

                        for(var item in value.children){

                          debugPrint('DATA: ${item.value}');

                        }

                      });
                      
                    },
                    child: Text('Get Data')
                ),
                Container(
                  height: MediaQuery.of(context).size.height*0.17,
                  decoration: BoxDecoration(
                      color: Colors.green.withOpacity(0.1)
                  ),
                  child: Row(
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.85,
                          height: 80,
                          padding: EdgeInsets.all(10),

                          child: Center(
                            child: TextFormField(
                              controller: input,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  borderSide: BorderSide(
                                    color: Color(0xfff3375d4),
                                  ),
                                  gapPadding: 0
                                )
                              ),
                            ),
                          )
                      ),
                      InkWell(
                        onTap: (){
                          messages.add(input.text);
                          isSender.add(true);


                          final auth = FirebaseAuth.instance;
                          final db = FirebaseDatabase.instance.ref();

                          db.child('Messages').child(auth.currentUser!.uid).push().set({
                            "message":input.text,
                            "isSender": true,
                            "time": '${DateTime.now()}',
                          });

                          input.text='';

                          setState(() {

                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.12,
                          height: MediaQuery.of(context).size.width*0.12,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.green.shade400,
                          ),
                          child: Icon(
                            Icons.send,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

          ],
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
