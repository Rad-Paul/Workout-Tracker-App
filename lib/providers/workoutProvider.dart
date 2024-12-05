import '../models/exercise_model.dart';
import '../models/workout_model.dart';

class WorkoutProvider {
  List<Workout> completedWorkout = [];
  List<Workout> userWorkouts = [];

  static final WorkoutProvider _instance = WorkoutProvider._create();
  List<int> test = [];
  WorkoutProvider._create();

  factory WorkoutProvider() {
    return _instance;
  }

  void AddNewWorkout(Workout workout){
    userWorkouts.add(workout);
  }

  static List<Workout> sampleWorkouts = [
    Workout(
      name: 'Legs', 
      exercises:[
        Exercise(name: 'Squat', sets:['12', '10', '8']),
        Exercise(name: 'Leg Press', sets:['12', '10', '8']),
        Exercise(name: 'Lunge', sets:['10', '10', '10']),
      ]
    ),
    Workout(
      name: 'Back and Biceps', 
      exercises:[
        Exercise(name: 'Chin-Up', sets:['8', '8',]),
        Exercise(name: 'Bicep Curl', sets:['15', '12', '10', '10']),
        Exercise(name: 'Lat Pull-Down', sets:['12', '10', '8']),
        Exercise(name: 'Hammer Curl', sets:['10', '10']),
      ]
    ),
    Workout(
      name: 'Upper', 
      exercises:[
        Exercise(name: 'Overhead Press', sets:['12', '10', '8']),
        Exercise(name: 'Bench Press', sets:['12', '10', '8']),
        Exercise(name: 'Lateral Raises', sets:['12', '12', '12']),
        Exercise(name: 'Skull Crushers', sets:['12', '10', '8']),
        Exercise(name: 'Reverse Curl', sets:['12', '12']),
      ]
    ),
    Workout(
      name: 'Strong 5x5', 
      exercises:[
        Exercise(name: 'Squat', sets:['5', '5', '5', '5', '5']),
        Exercise(name: 'Bench Press', sets:['5', '5', '5', '5', '5']),
        Exercise(name: 'Bent Over Row', sets:['5', '5', '5', '5', '5']),
      ]
    ),
  ];
}