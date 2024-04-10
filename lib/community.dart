import 'package:flutter/material.dart';
import 'package:whatsapp2/calls.dart';
import 'package:whatsapp2/home.dart';
import 'package:whatsapp2/status.dart';


class Community_Page extends StatefulWidget {
  const Community_Page({super.key});

  @override
  State<Community_Page> createState() => _Community_PageState();
}

class _Community_PageState extends State<Community_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("WhatsApp",style: TextStyle(color: Colors.white)),
            Row(
              children: [
                Icon(Icons.camera_alt,color: Colors.white,),
                SizedBox(width: 20),
                Icon(Icons.more_vert,color: Colors.white,)
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.auto_mode, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Status_Page()));
              },
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.group, color: Colors.black),
              onPressed: () {
                print("Community");
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.call, color: Colors.black),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Calls_Page()));
              },
            ),
            label: 'Calls',
          ),
        ],
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.green,
      ),
    );
  }
}
