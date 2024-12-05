import 'package:new_workout_tracker_app/models/exercise_model.dart';

class Workout {
  String name;
  List<Exercise> exercises;
  Workout({
    this.name = 'Unnamed',
    required this.exercises,
  });
}