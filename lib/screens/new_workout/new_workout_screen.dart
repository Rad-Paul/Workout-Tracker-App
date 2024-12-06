import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/screens/exercise/exercise_view_model.dart';
import 'package:new_workout_tracker_app/screens/new_workout/workout_view_model.dart';
import 'package:new_workout_tracker_app/widgets/alertDialogBox.dart';
import 'package:new_workout_tracker_app/widgets/backgroundButton.dart';
import 'package:new_workout_tracker_app/widgets/commonEmphasizedButton.dart';
import 'package:provider/provider.dart';
import '../../widgets/exerciseContainer.dart';
import '../../design/design.dart';

class NewWorkoutScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutViewModel(),
      child: Scaffold(
        backgroundColor: AppThemes.background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppThemes.background,
          foregroundColor: AppThemes.basicText,
          leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
        ),
        body: NewWorkoutScreenBody(),
      ),
    );
  }
}


class NewWorkoutScreenBody extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<WorkoutViewModel>(context);

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Container(
                          width: ScreenSize.width * 0.6,
                          child: TextField(
                            controller: vm.templateNameController,
                            style: AppTStyles.basicLarge,
                            decoration: InputDecoration(
                              hintText: 'Template name...',
                              hintStyle: AppTStyles.onBackgroundLarge,                   
                            ),
                          ),
                        )
                      ),
                      IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: AppThemes.emphasized,))
                    ],
                  ),
                  SizedBox(height: ScreenSize.height * 0.05,),

                  Consumer<WorkoutViewModel>(
                    builder: (context, value, child) {
                      return ListView.builder(
                        itemCount: vm.workout.exercises.length,
                        primary: false,
                        shrinkWrap: true,
                        itemBuilder: (context, index){
                          return ExerciseContainer(exercise: vm.workout.exercises[index]);
                        },
                      );
                    },
                  ),

                  Container(
                    width: double.infinity,
                    height: ScreenSize.height * 0.05,
                    child: FloatingActionButton(
                      heroTag: 'ADD EXERCISE',
                      elevation: 0,
                      backgroundColor: AppThemes.background,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero,),
                      onPressed: () async {
                        final result = await showDialog<String>(
                          context: context,
                          builder: (context){
                            return AlertDialogBox();
                          }
                        );

                        if(result != null){
                          vm.addNewExercise(result);
                          print(vm.workout.exercises.length);
                        }
                      },
                      child: Text('ADD EXERCISE', style: AppTStyles.emphasizedMedium,),
                    ),
                  ),
                  Container(
                    height: ScreenSize.height * 0.05,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: AppThemes.background,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CommonEmphasizedButton(text:'CLEAR', onPress: vm.clearWorkout),
                    SizedBox(width: ScreenSize.width * 0.1,),
                    CommonEmphasizedButton(text:'SAVE', onPress: (){
                      vm.saveWorkout();
                      Navigator.of(context).pop();
                    },),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }
}