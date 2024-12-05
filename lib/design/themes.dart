import 'package:flutter/material.dart';

class AppThemes{
  static const Color background = Color.fromARGB(255, 30, 31, 30);
  static const Color basicText = Color.fromARGB(255, 227, 230, 228);
  static const Color emphasized = Color.fromARGB(255, 102, 194, 255);
  static const Color onBackground = Color.fromARGB(255, 48, 47, 47);
  static const Color border = Color.fromARGB(255, 115, 113, 113); 
  static const Color inputBackground = Color.fromARGB(255, 48, 47, 47); 
  static const Color dark = Color.fromARGB(255, 0, 0, 0);
  static const Color a = Color(0xff3b3d3c);
  static const Color b = Color(0xff3b3d3c);
  static const Color c = Color(0xff3b3d3c);
  static const Color d = Color(0xff3b3d3c);
}

class ScreenSize{
  static late double width;
  static late double height;

  static void init(BuildContext context){
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
  }
}