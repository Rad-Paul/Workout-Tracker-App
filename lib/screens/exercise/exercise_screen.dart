import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/exercise/exercise_view_model.dart';
import 'package:new_workout_tracker_app/widgets/templateContainer.dart';
import '../../models/training_model.dart';
import '../new_workout/new_blank_workout_screen.dart';
import 'package:new_workout_tracker_app/design/design.dart';

class ExerciseScreen  extends StatefulWidget{
  ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => _ExerciseScreenState();
}

class _ExerciseScreenState extends State<ExerciseScreen> {
  ExerciseViewModel vm = ExerciseViewModel();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('WORKOUT TEMPLATES', style: AppTStyles.getCustomBasicText(24),),
            ],
          ),

          SizedBox(height: ScreenSize.height * 0.05),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Your templates: ', style: AppTStyles.onBackgroundLarge,),
              IconButton(
                onPressed: (){
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (BuildContext context) => NewBlankWorkoutScreen())
                  );
                }, 
                icon: Icon(Icons.add, color: AppThemes.basicText, size: 28,)
              ),
            ],
          ),

          WorkoutTemplatesContainer(workouts: vm.userWorkouts),

          Text('Sample templates:', style: AppTStyles.onBackgroundLarge,),

          WorkoutTemplatesContainer(workouts: vm.sampleWorkouts)

        ],
      ),
    );
  }
}

class WorkoutTemplatesContainer extends StatefulWidget{

  List<Workout> workouts;

  WorkoutTemplatesContainer({super.key, required this.workouts});

  @override
  State<WorkoutTemplatesContainer> createState() => _WorkoutTemplatesContainerState();
}

class _WorkoutTemplatesContainerState extends State<WorkoutTemplatesContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: widget.workouts.map((workout){
        return TemplateContainer(workout: workout);
      }).toList(),
    );
  }
}