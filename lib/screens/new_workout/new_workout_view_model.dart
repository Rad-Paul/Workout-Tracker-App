
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/providers/workoutProvider.dart';
import '../../models/workout_model.dart';
import '../../models/exercise_model.dart';

class NewWorkoutViewModel {
  Workout workout = Workout(exercises: [], name: '');
  List<List<TextEditingController>> setControllers = [];

  StreamController newWorkoutController = StreamController.broadcast();

  WorkoutProvider workoutProvider = WorkoutProvider();

}