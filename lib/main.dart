import 'package:flutter/material.dart';
import 'package:hava_durumu_app_v1/screens/loading_screen.dart';
import 'package:hava_durumu_app_v1/screens/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: LoadingScreen(),
    );
  }
}