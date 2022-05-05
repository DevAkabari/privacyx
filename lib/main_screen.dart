import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton:FloatingActionButton(
        backgroundColor: Colors.red,

        onPressed: (){
        },
        child: const Icon(Icons.call,color: Colors.white,), //icon inside button
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,


      bottomNavigationBar: BottomAppBar( //bottom navigation bar on scaffold
        color:Colors.blue,
        shape:const CircularNotchedRectangle(), //shape of notch
        notchMargin: 5, //notche margin between floating button and bottom appbar
        child: Row( //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const[
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(radius: 20,backgroundColor:Colors.white70,child: Icon(Icons.menu, color: Colors.black,)),
            ),         Padding(
              padding:  EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(radius: 20,backgroundColor:Colors.white70,child: Icon(Icons.menu, color: Colors.black,)),
            ),         Padding(
              padding:  EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(radius: 20,backgroundColor:Colors.white70,child: Icon(Icons.menu, color: Colors.black,)),
            ),         Padding(
              padding:  EdgeInsets.symmetric(vertical: 8),
              child: CircleAvatar(radius: 20,backgroundColor:Colors.white70,child: Icon(Icons.menu, color: Colors.black,)),
            ),
          ],
        ),
      ),
    )/*Scaffold(
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blue,
         *//*     borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10))*//*),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade500,
                child: Icon(
                  Icons.event_note_outlined,
                  size: 30,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade500,
                child: Icon(
                  Icons.event_note_outlined,
                  size: 30,
                ),
              ),
              const SizedBox.shrink(),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade500,
                child: Icon(
                  Icons.event_note_outlined,
                  size: 30,
                ),
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade500,
                child: Icon(
                  Icons.event_note_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.call, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    )*/;
  }
}
