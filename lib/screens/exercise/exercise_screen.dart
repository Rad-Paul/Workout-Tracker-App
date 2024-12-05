import 'package:flutter/widgets.dart';

class ExerciseScreen  extends StatefulWidget{
  ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text('EXERCISE'),
        )
      ],
    );
  }
}