import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/models/training_model.dart';
import '../../design/design.dart';
import 'package:provider/provider.dart';
import '../new_workout/workout_view_model.dart';
import '../../vms/inspect_workout_view_model.dart';

class StartWorkoutScreen extends StatelessWidget{
  Workout workout;

  StartWorkoutScreen({super.key, required this.workout});

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(workout, editing: false),
      child: Scaffold(
        backgroundColor: AppThemes.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppThemes.background,
          foregroundColor: AppThemes.basicText,
          leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
        ),
        body: InspectWorkoutViewModel(),
      ),
    );
  }
}