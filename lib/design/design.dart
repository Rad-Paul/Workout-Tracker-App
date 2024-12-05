import 'package:flutter/material.dart';

class AppThemes{
  static const Color background = Color.fromARGB(255, 30, 31, 30);
  static const Color basicText = Color.fromARGB(255, 227, 230, 228);
  static const Color emphasized = Color.fromARGB(255, 102, 194, 255);
  static const Color onBackground = Color.fromARGB(255, 48, 47, 47);
  static const Color onBackgroundText = Color.fromARGB(255, 99, 98, 98);
  static const Color border = Color.fromARGB(255, 115, 113, 113); 
  static const Color inputBackground = Color.fromARGB(255, 48, 47, 47); 
  static const Color dark = Color.fromARGB(255, 0, 0, 0);
  static const Color error = Color.fromARGB(255, 255, 0, 0);
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

class AppTStyles{

  static TextStyle get basicSmall => const TextStyle(color: AppThemes.basicText, fontSize: 12);
  static TextStyle get basicMedium => const TextStyle(color: AppThemes.basicText, fontSize: 16);
  static TextStyle get basicLarge => const TextStyle(color: AppThemes.basicText, fontSize: 20);
  static TextStyle get basicVeryLarge => const TextStyle(color: AppThemes.basicText, fontSize: 32);
  static TextStyle get emphasizedSmall => const TextStyle(color: AppThemes.emphasized, fontSize: 12);
  static TextStyle get emphasizedMedium => const TextStyle(color: AppThemes.emphasized, fontSize: 16);
  static TextStyle get emphasizedLarge => const TextStyle(color: AppThemes.emphasized, fontSize: 20);
  static TextStyle get onBackgroundSmall => const TextStyle(color: AppThemes.onBackgroundText, fontSize: 12);
  static TextStyle get onBackgroundMedium => const TextStyle(color: AppThemes.onBackgroundText, fontSize: 16);
  static TextStyle get onBackgroundLarge => const TextStyle(color: AppThemes.onBackgroundText, fontSize: 20);

  static TextStyle getCustomBasicText(double? fs){   
    TextStyle toR = fs != null 
      ? TextStyle(color:AppThemes.basicText, fontSize: fs) 
      : const TextStyle(color: AppThemes.error, fontSize: 32);
    
    return toR;
  }

  static TextStyle getCustomEmphasizedText(double? fs){   
    TextStyle toR = fs != null 
      ? TextStyle(color:AppThemes.emphasized, fontSize: fs) 
      : const TextStyle(color: AppThemes.error, fontSize: 32);
    
    return toR;
  }

  static TextStyle getCustomOnBackgroundText(double? fs){   
    TextStyle toR = fs != null 
      ? TextStyle(color:AppThemes.onBackgroundText, fontSize: fs) 
      : const TextStyle(color: AppThemes.error, fontSize: 32);
    
    return toR;
  }
}