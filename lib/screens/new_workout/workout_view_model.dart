import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/providers/workoutProvider.dart';
import '../../models/training_model.dart';
import 'package:provider/provider.dart';

class WorkoutViewModel extends ChangeNotifier{

  Workout workout = Workout(exercises: [], name: '');
  Map<String, List<List<TextEditingController>>> exerciseSetControllers = {};
  Map streamMap = {};

  StreamController newExerciseController = StreamController();

  TextEditingController newExerciseTextController = TextEditingController();

  WorkoutProvider workoutProvider = WorkoutProvider();


  void addNewExercise(String result){
    Exercise newExercise = Exercise(name: result, sets: []);
    workout.exercises.add(newExercise);
    exerciseSetControllers[result] = [];
    addSet(newExercise);
  }

  void addSet(Exercise exercise){
    exercise.sets.add(Set(reps: '', weight: ''));
    exerciseSetControllers[exercise.name]!.add([TextEditingController(), TextEditingController()]);
  }

}