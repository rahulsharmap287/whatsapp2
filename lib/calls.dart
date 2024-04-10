import 'package:flutter/material.dart';
import 'package:whatsapp2/calls_widget.dart';
import 'package:whatsapp2/community.dart';
import 'package:whatsapp2/home.dart';
import 'package:whatsapp2/status.dart';

class Calls_Page extends StatefulWidget {
  const Calls_Page({super.key});

  @override
  State<Calls_Page> createState() => _Calls_PageState();
}

class _Calls_PageState extends State<Calls_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Community_Page()));
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: Icon(Icons.call, color: Colors.black),
              onPressed: () {},
            ),
            label: 'Calls',
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal.shade500,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "WhatsApp",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                Icon(Icons.camera_alt, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.search, color: Colors.white),
                SizedBox(width: 20),
                Icon(Icons.more_vert, color: Colors.white)
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.teal.shade500),
                child: Center(
                    child: Icon(
                  Icons.link,
                  color: Colors.white,
                  size: 35,
                )),
              ),
              title: Text("Create Call Link"),
              subtitle: Text(
                "Shar a link for your WhatsApp call",
                style: TextStyle(fontSize: 12),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(alignment: Alignment.topLeft, child: Text("Recent")),
            ),
            SizedBox(height: 10),
            CallsList(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal.shade500,
        onPressed: () {},
        child: Icon(Icons.add_call,color: Colors.white,),
      ),
    );
  }
}
