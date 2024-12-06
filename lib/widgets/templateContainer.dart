import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/start_workout/start_workout_screen.dart';
import '../design/design.dart';
import '../models/training_model.dart';
import '../vms/inspect_workout_view_model.dart';

class TemplateContainer extends StatefulWidget{

  Workout workout;
  TemplateContainer({super.key, required this.workout}); 

  @override
  State<TemplateContainer> createState() => _TemplateContainerState();
}

class _TemplateContainerState extends State<TemplateContainer> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          onTap: () {
            Future.delayed(Duration(seconds: 1), (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => StartWorkoutScreen(workout: widget.workout))
              );
            });
          },
          child: Container(
            width: ScreenSize.width * 0.6,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: AppThemes.border)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //workout title
                  Text(widget.workout.name, style: AppTStyles.basicLarge,),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //workout exercises
                      children: widget.workout.exercises.map((exercise){
                        return Text('${exercise.sets.length} x ${exercise.name}', style: AppTStyles.basicMedium,);
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}