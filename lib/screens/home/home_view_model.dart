import 'package:new_workout_tracker_app/providers/userProvider.dart';

class HomeViewModel {
  UserProvider userProvider = UserProvider();

  String get greetUser => 'Hello ${userProvider.user.firstName} ${userProvider.user.lastName}!';
}