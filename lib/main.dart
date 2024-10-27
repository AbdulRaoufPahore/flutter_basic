import 'package:flutter/material.dart';
import 'package:myfirstapp/data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter learning',
      home: HomePage(),
    );
  }
}
