import 'package:new_workout_tracker_app/providers/workoutProvider.dart';
import '../../models/workout_model.dart';

class ExerciseViewModel {
  WorkoutProvider workoutProvider = WorkoutProvider();

  List<Workout> get sampleWorkouts => WorkoutProvider.sampleWorkouts;
  List<Workout> get userWorkouts => workoutProvider.userWorkouts;
}