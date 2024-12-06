import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/new_workout/workout_view_model.dart';
import 'package:provider/provider.dart';
import 'package:new_workout_tracker_app/widgets/setContainer.dart';
import '../design/design.dart';
import '../models/training_model.dart';

class ExerciseContainer extends StatefulWidget{
  Exercise exercise;

  ExerciseContainer({super.key, required this.exercise});

  @override
  State<ExerciseContainer> createState() => _ExerciseContainerState();
}

class _ExerciseContainerState extends State<ExerciseContainer> {

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WorkoutViewModel>(context);
    return Container(
      color: AppThemes.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.exercise.name, style: AppTStyles.emphasizedLarge,),
                IconButton(onPressed: (){}, icon: Icon(Icons.clear, color: AppThemes.emphasized, size: 20,))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: ScreenSize.width * 0.1,
                  child: Center(child: Text('SET', style: AppTStyles.getCustomBasicText(12),))
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: ScreenSize.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('KGS', style: AppTStyles.getCustomBasicText(12))
                        ],
                      )
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: ScreenSize.width * 0.3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('REPS', style: AppTStyles.getCustomBasicText(12))
                        ],
                      )
                    )
                  ],
                ),
              ],
            ),
          ),
          
          ListView.builder(
            itemCount: widget.exercise.sets.length,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index){
              return SetContainer(index: (index+1).toString(),
                weightController: vm.exerciseSetControllers[widget.exercise.name]![index][0], 
                setsController: vm.exerciseSetControllers[widget.exercise.name]![index][1]
              );
            },
          ),

          //add set button
          Container(
            width: double.infinity,
            height: ScreenSize.height * 0.1,
            child: FloatingActionButton(
              elevation: 0,
              backgroundColor: AppThemes.background,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
              onPressed: (){
                vm.addSet(widget.exercise);
              },
              child: Text('ADD SET', style: AppTStyles.emphasizedMedium,),
            ),
          ),
          //sets container         
        ],
      ),
    );
  }
}