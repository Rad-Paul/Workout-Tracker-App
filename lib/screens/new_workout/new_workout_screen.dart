import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/widgets/backgroundButton.dart';
import 'package:new_workout_tracker_app/widgets/commonEmphasizedButton.dart';
import '../../design/design.dart';

class NewWorkoutScreen extends StatelessWidget{

  

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: AppThemes.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppThemes.background,
        foregroundColor: AppThemes.basicText,
        leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('New Workout Template', style: AppTStyles.basicLarge,),
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: AppThemes.emphasized,))
                    ],
                  ),
                  SizedBox(height: ScreenSize.height * 0.05,),
                  Backgroundbutton(text: 'ADD EXERCISE', width: double.infinity, style: AppTStyles.emphasizedMedium,),

                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppThemes.background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CommonEmphasizedButton(text:'CANCEL'),
                    SizedBox(width: ScreenSize.width * 0.1,),
                    CommonEmphasizedButton(text:'SAVE'),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}