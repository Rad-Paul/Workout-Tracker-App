import 'package:flutter/material.dart';
import '../design/design.dart';
import '../models/training_model.dart';

class TemplateContainer extends StatelessWidget{

  Workout workout;
  TemplateContainer({super.key, required this.workout}); 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
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
              Text(workout.name, style: AppTStyles.basicLarge,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //workout exercises
                  children: workout.exercises.map((exercise){
                    return Text('${exercise.sets.length} x ${exercise.name}', style: AppTStyles.onBackgroundMedium,);
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}