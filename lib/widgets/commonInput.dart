import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/design/design.dart';

class CommonInput extends StatelessWidget{
  TextEditingController textController = TextEditingController();
  String hintText;
  double width;
  double height;
  TextStyle style;

  CommonInput({
    super.key, 
    required this.textController, 
    required this.width,
    this.height = 50,
    this.hintText = '',
    this.style = const TextStyle(color: AppThemes.basicText)
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppThemes.inputBackground,
          border: Border.all(color: AppThemes.border),
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: textController,
            style: style,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: TextStyle(color: AppThemes.border),
            ),
          ),
        ),
      ),
    );
  }
}