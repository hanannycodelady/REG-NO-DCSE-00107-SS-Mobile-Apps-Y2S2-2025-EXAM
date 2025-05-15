import 'package:exam_2025/MockupScreenOne.dart';
import 'package:exam_2025/MockupScreenTwo.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: Mockupscreenone(),
      //home: Mockupscreentwo(),

      
      

    );
  }
}

