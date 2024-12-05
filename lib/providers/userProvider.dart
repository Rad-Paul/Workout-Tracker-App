import 'dart:async';
import '../models/user_model.dart';

class UserProvider {
  static final UserProvider _instance = UserProvider._create();
  List<int> test = [];
  UserProvider._create();

  factory UserProvider() {
    return _instance;
  }

  StreamController<String> _firstNameController = StreamController<String>.broadcast();
  StreamController<String> _lastNameController = StreamController<String>.broadcast();
  StreamController<String> _emailController = StreamController<String>.broadcast();
  StreamController<String> _ageController = StreamController<String>.broadcast();

  User _User = User();

  Stream<String> get firstNameStream => _firstNameController.stream;
  Stream<String> get lastNameStream => _lastNameController.stream;
  Stream<String> get ageStream => _ageController.stream;
  Stream<String> get emailStream => _emailController.stream;

  User get user => _User;

  void updateUser(String? firstName, String? lastName, String? age, String? email){

    if(firstName != null) { 
      _User.firstName = firstName;
      _firstNameController.sink.add(firstName);
    } 

    if(lastName != null) { 
      _User.lastName = lastName;
      _lastNameController.sink.add(lastName);
    } 

    if(age != null) { 
      _User.age = age;
      _ageController.sink.add(age);
    } 

    if(email != null) { 
      _User.email = email;
      _emailController.sink.add(email);
    } 
  }

  void killStreams() {
    _firstNameController.close();
    _lastNameController.close();
    _emailController.close();
    _ageController.close();
  }
}