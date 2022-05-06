import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),

        child: Column(

          children: [
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.2),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20))),
                child: Text(
                  "Hello tom,how are you?",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical:8 ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/wp7650067-aesthetic-tom-and-jerry-wallpapers.jpg',
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Text(
                    "Hello tom,how are you??",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),



              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  CircleAvatar(
                    child:Icon( Icons.keyboard_control_key,color: Colors.white,),
                    backgroundColor: Colors.blue.withOpacity(0.2),
                  ),
                  SizedBox(width: 8,),
                  CircleAvatar(
                    child:Icon( Icons.mic,color: Colors.white,),
                    backgroundColor: Colors.blue.withOpacity(0.2),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),

                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[800]),
                          hintText: "Type in your text",
                          fillColor: Colors.blue.withOpacity(0.2)),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
