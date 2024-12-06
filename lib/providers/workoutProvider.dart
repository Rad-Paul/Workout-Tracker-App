import '../models/training_model.dart';

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
      name: 'Test', 
      exercises:[
        Exercise(name: 'Squat', sets:[Set(weight: '85', reps: '12',), Set(weight: '15', reps: '10',), Set(weight: '44', reps: '8',),]),
        Exercise(name: 'Leg Press', sets:[Set(weight: '25', reps: '12',), Set(weight: '20', reps: '10',), Set(weight: '43', reps: '8',),]),
        Exercise(name: 'Lunge', sets:[Set(weight: '20', reps: '12',), Set(weight: '69', reps: '10',), Set(weight: '56', reps: '8',),]),
      ]
    ),
    Workout(
      name: 'Legs', 
      exercises:[
        Exercise(name: 'Squat', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Leg Press', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Lunge', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
      ]
    ),
    Workout(
      name: 'Back and Biceps', 
      exercises:[
        Exercise(name: 'Chin-Up', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Bicep Curl', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Lat Pull-Down', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Hammer Curl', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
      ]
    ),
    Workout(
      name: 'Upper', 
      exercises:[
        Exercise(name: 'Overhead Press', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Bench Press', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Lateral Raises', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Skull Crushers', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
        Exercise(name: 'Reverse Curl', sets:[Set(weight: '', reps: '12',), Set(weight: '', reps: '10',), Set(weight: '', reps: '8',),]),
      ]
    ),
    Workout(
      name: 'Strong 5x5', 
      exercises:[
        Exercise(name: 'Squat', sets:[Set(weight: '', reps: '5',), Set(weight: '', reps: '5',), Set(weight: '', reps: '5',),]),
        Exercise(name: 'Bench Press', sets:[Set(weight: '', reps: '5',), Set(weight: '', reps: '5',), Set(weight: '', reps: '5',),]),
        Exercise(name: 'Bent Over Row', sets:[Set(weight: '', reps: '5',), Set(weight: '', reps: '5',), Set(weight: '', reps: '5',),]),
      ]
    ),
  ];
}