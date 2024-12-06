class Workout {
  String name;
  List<Exercise> exercises;
  Workout({
    this.name = 'Unnamed',
    required this.exercises,
  });
}

class Exercise {
  String name;
  List<Set> sets;
  String weight;

  Exercise({
    required this.name,
    required this.sets,
    this.weight = '',
  });
}

class Set {
  String weight;
  String reps;

  Set({this.weight = '', required this.reps});
}