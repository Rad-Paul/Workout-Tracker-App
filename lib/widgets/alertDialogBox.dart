import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/design/design.dart';
import 'package:new_workout_tracker_app/widgets/backgroundButton.dart';
import 'package:new_workout_tracker_app/widgets/commonInput.dart';

class AlertDialogBox extends StatelessWidget{

  AlertDialogBox({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        contentPadding: EdgeInsets.all(0),
        backgroundColor: AppThemes.background,
        content: Container(
          color: AppThemes.background,
          width: ScreenSize.width * 0.6,
          height: ScreenSize.height * 0.2,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CommonInput(textController: controller, width: ScreenSize.width * 0.5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Backgroundbutton(text: 'CANCEL', width: 80, height: 40, 
                    onPress: (){
                      controller.clear();
                      Navigator.of(context).pop();
                    }),
                    Backgroundbutton(text: 'SAVE', width: 80, height: 40,
                    onPress: (){
                      Navigator.of(context).pop(controller.text);
                    }),
                  ],
                )
              ],
            ),
          ),
        ),
      );
  }
}