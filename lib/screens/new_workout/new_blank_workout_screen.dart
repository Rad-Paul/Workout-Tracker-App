import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/new_workout/workout_view_model.dart';
import 'package:provider/provider.dart';
import '../../design/design.dart';
import '../../req/workout_editor.dart';

class NewBlankWorkoutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(null),
      child: Scaffold(
        backgroundColor: AppThemes.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppThemes.background,
          foregroundColor: AppThemes.basicText,
          leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
        ),
        body: WorkoutEditor(),
      ),
    );
  }
}
