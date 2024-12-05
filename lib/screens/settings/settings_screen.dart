import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/design/design.dart';
import 'package:new_workout_tracker_app/providers/userProvider.dart';
import 'package:new_workout_tracker_app/widgets/commonEmphasizedButton.dart';
import 'package:new_workout_tracker_app/widgets/commonInput.dart';
import 'package:provider/provider.dart';
import './settings_view_model.dart';

class SettingsScreen extends StatefulWidget{
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  SettingsViewModel vm = SettingsViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: AppThemes.background,
        foregroundColor: AppThemes.basicText,
        leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Center(
            child: Column(
              children: [
                StreamBuilder<String>(
                  stream: vm.userProvider.firstNameStream,
                  initialData: vm.firstName,
                  builder: (context, snapshot){
                    return Container(
                      width: ScreenSize.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: AppThemes.border)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(                     
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('First Name: ' + vm.firstName, style: TextStyle(color: AppThemes.basicText),),
                            Text('Last Name: ' + vm.lastName, style: TextStyle(color: AppThemes.basicText),),
                            Text('Email: ' + vm.email, style: TextStyle(color: AppThemes.basicText),),
                            Text('Age: ' + vm.age, style: TextStyle(color: AppThemes.basicText),),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                //Container for updating user
                Container(
                  width: ScreenSize.width * 0.6,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    border: Border.all(color: AppThemes.border)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(                     
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CommonInput(textController: vm.firstNC, width: ScreenSize.width * 0.5, hintText: 'First name...',),
                        CommonInput(textController: vm.lastNC, width: ScreenSize.width * 0.5, hintText: 'Last name...',),
                        CommonInput(textController: vm.emailC, width: ScreenSize.width * 0.5, hintText: 'email...',),
                        CommonInput(textController: vm.ageC, width: ScreenSize.width * 0.5, hintText: 'age',),
                        CommonEmphasizedButton(
                          text: 'SAVE',
                          onPress: (){
                            vm.updateInfo();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}