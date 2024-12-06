import 'dart:async';
import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/providers/workoutProvider.dart';
import '../../models/training_model.dart';
import 'package:provider/provider.dart';

class WorkoutViewModel extends ChangeNotifier{

  Workout workout = Workout(exercises: [], name: '');
  Map<String, List<List<TextEditingController>>> exerciseSetControllers = {};
  Map<String, StreamController> streamMap = {};

  TextEditingController templateNameController = TextEditingController();

  TextEditingController newExerciseTextController = TextEditingController();

  WorkoutProvider workoutProvider = WorkoutProvider();


  void addNewExercise(String result){
    Exercise newExercise = Exercise(name: result, sets: []);

    workout.exercises.add(newExercise);

    exerciseSetControllers[result] = [];

    streamMap[result] = StreamController();

    addSet(newExercise);

    notifyListeners();
  }

  void addSet(Exercise exercise){
    exercise.sets.add(Set(reps: '', weight: ''));
    exerciseSetControllers[exercise.name]!.add([TextEditingController(), TextEditingController()]);
    streamMap[exercise.name]!.add('SET ADDED');
  }

  void saveWorkout(){
    List<Exercise> exercises = workout.exercises;
    for(int i = 0; i < exercises.length; i++){
      for(int j = 0; j < exercises[i].sets.length; j++){
        String exerciseName = exercises[i].name;
        Set set = exercises[i].sets[j];

        set.weight = exerciseSetControllers[exerciseName]![j][0].text;
        set.reps = exerciseSetControllers[exerciseName]![j][1].text;
      }
    }

    workout.name = templateNameController.text;

    workoutProvider.userWorkouts.add(workout);
  }

  void clearWorkout(){
    workout = Workout(exercises: [], name: '');
    exerciseSetControllers = {};
    streamMap = {};
    templateNameController.clear();

    notifyListeners();
  }

}