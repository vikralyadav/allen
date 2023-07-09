//import 'package:allen/pallete.dart';
import 'package:chat_app/home_page.dart';
import 'package:chat_app/pallete.dart';
import 'package:flutter/material.dart';
//import 'package:allen/home_page.dart/';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat',
      theme: ThemeData.light(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Pallete.whiteColor,
        appBarTheme: const AppBarTheme(
          backgroundColor: Pallete.whiteColor,
        )
      ),

      home: const HomePage(),
    );
  }
}