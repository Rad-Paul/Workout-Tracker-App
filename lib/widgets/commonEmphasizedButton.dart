import 'package:flutter/material.dart';
import '../design/design.dart';

class CommonEmphasizedButton extends StatelessWidget{

  String text;
  double width;
  double height;
  TextStyle style;
  Color background;
  VoidCallback? onPress;

  CommonEmphasizedButton({
    super.key,
    this.text = 'PRESS',
    this.width = 80,
    this.height = 40,
    this.style = const TextStyle(color: AppThemes.basicText),
    this.background = AppThemes.emphasized,
    this.onPress, 
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: FloatingActionButton(
        heroTag: text,
        backgroundColor: background,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        onPressed: onPress ?? (){
          print('No event set');
        },
        child: Text(text, style: style,),
      ),
    );
  }
}