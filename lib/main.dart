// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // Scaffold Wiget
      home: Scaffold(
        // Set app bar
        appBar: AppBar(
          // Set icon color and size in app bar
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 30,
          ),
          // Set the background color of app bar
          backgroundColor: Colors.blueAccent,
          // Set title into center center
          centerTitle: true,

          // Text into the titile
          title: Text(
            "App Bar",
            style: TextStyle( 
              color: Colors.white,         
              fontSize: 25,
            ),
          ),
          // icons in app bar
          actions: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(
                CupertinoIcons.person_circle_fill,
              ),
            )
          ],
        ),

        //Set the body of the Scaffold
        //Set the body into the Center
        body: Center(
          //Set the Text in the Center
          child: Text(
            'Scaffold Widget',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
        ),
        //Set drawer
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Abdul Raouf'),
                accountEmail: Text('abdulraouf@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('image/profile.jpg'),
                ),
                decoration: BoxDecoration(color: Colors.blueAccent),
              ),
              ListTile(
                title: Text(
                  "Personal Information",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  CupertinoIcons.person_circle_fill,
                  color: Colors.blueAccent,
                  size: 35,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListTile(
                title: Text(
                  "Requirements",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  CupertinoIcons.book_circle_fill,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
            ],
          ),
        ),
        //Set the floating Action Button
        floatingActionButton: FloatingActionButton(
          // Set the background Color of the Floating Button
          backgroundColor: Colors.blueAccent,
          //Shadow of the button
          elevation: 10,
          //Shape of the Button(circle or rectangular)
          shape: CircleBorder(),
          onPressed: () {
            print('Floating button is pressed ');
          },
          //Icon add in button
          child: Icon(
            CupertinoIcons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
