
import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/providers/userProvider.dart';

class SettingsViewModel {
  UserProvider userProvider = UserProvider();

  TextEditingController firstNC = TextEditingController();
  TextEditingController lastNC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController ageC = TextEditingController();

  String get firstName => userProvider.user.firstName ?? '';
  String get lastName => userProvider.user.lastName ?? '';
  String get email => userProvider.user.email ?? '';
  String get age => userProvider.user.age ?? '';

  void updateInfo(){
    userProvider.updateUser(firstNC.text, lastNC.text, ageC.text, emailC.text);
    firstNC.clear(); lastNC.clear(); ageC.clear(); emailC.clear();
  }
}