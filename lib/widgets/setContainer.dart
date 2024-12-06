import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/new_workout/workout_view_model.dart';
import 'package:new_workout_tracker_app/widgets/commonInput.dart';
import 'package:provider/provider.dart';
import '../design/design.dart';

class SetContainer extends StatelessWidget{
  String index;
  TextEditingController weightController;
  TextEditingController setsController;

  SetContainer({
    super.key, 
    this.index = '-',
    required this.weightController,
    required this.setsController,
  });

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WorkoutViewModel>(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 50,
            width: ScreenSize.width * 0.1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(index, style: AppTStyles.emphasizedMedium,),
            )
          ),
          CommonInput(textController: weightController, width: ScreenSize.width * 0.3, height: 30,),
          CommonInput(textController: setsController, width: ScreenSize.width * 0.3, height: 30,),
        ],
      ),
    );
  }
}