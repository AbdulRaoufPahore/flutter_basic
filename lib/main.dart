import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Learning',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Custimizing-Font',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.lime,
            ),
          ),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Text(
            'Hello Mr / Mrs : ',
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Pacifico',
              color: Colors.orangeAccent,
            ),
          ),
        ),
      ),
    );
  }
}
