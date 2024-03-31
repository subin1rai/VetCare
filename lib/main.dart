import 'package:flutter/material.dart';
import 'package:vetapp/Screen/Get_Start.dart';
import 'package:vetapp/Screen/Register.dart';
import 'package:vetapp/add%20record/add.dart';
import 'package:vetapp/add%20record/home.dart';
import 'package:vetapp/add%20record/nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BottomNavbar(),
    );
  }
}
