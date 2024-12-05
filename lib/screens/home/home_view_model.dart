import 'package:new_workout_tracker_app/providers/userProvider.dart';

class HomeViewModel {
  UserProvider userProvider = UserProvider();

  String get firstName => userProvider.user.firstName ?? '';
  String get lastName => userProvider.user.lastName ?? '';
  String get email => userProvider.user.email ?? '';
  String get age => userProvider.user.age ?? '';

  String get greetUser => 'Hello ${userProvider.user.firstName} ${userProvider.user.lastName}!';
}