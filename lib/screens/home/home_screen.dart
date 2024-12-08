import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/design/design.dart';
import 'package:new_workout_tracker_app/screens/home/home_view_model.dart';
import 'package:new_workout_tracker_app/screens/settings/settings_screen.dart';

class HomeScreen  extends StatefulWidget{
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeViewModel vm = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //top bar with settings
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context) => SettingsScreen())
                );
              }, 
              icon: Icon(Icons.settings, color: AppThemes.basicText,)
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 200, horizontal: 50),
          child: StreamBuilder<String>(
            stream: vm.userProvider.firstNameStream,
            builder: (context, snapshot) {
              if(vm.firstName != '' && vm.lastName != ''){
                return Text('Welcome ${AppLocalizations.of(context)!.welcome} ${vm.userFullName}!', style: TextStyle(color: AppThemes.basicText, fontSize: 32),);
              }
              else{
                return Text('${AppLocalizations.of(context)!.welcome}!', style: TextStyle(color: AppThemes.basicText, fontSize: 32));
              }
            },
          ),
        )              
      ],
    );
  }
}