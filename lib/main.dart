import 'package:flutter/material.dart';
import 'package:new_workout_tracker_app/design/themes.dart';
import 'package:new_workout_tracker_app/providers/userProvider.dart';
import 'package:new_workout_tracker_app/screens/exercise/exercise_screen.dart';
import 'package:new_workout_tracker_app/screens/history/history_screen.dart';
import 'package:new_workout_tracker_app/screens/home/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    Provider<UserProvider>(
      create: (_) => UserProvider(),
      dispose: (_, provider) => provider.killStreams(),
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: AppBase(),
    );
  }
}


class AppBase extends StatefulWidget{

  AppBase({super.key});

  @override
  State<AppBase> createState() => _AppBaseState();
}

class _AppBaseState extends State<AppBase> {
  int _selectedIndex = 0;

  void updateIndex(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> pages = [
    HomeScreen(),
    HistoryScreen(),
    ExerciseScreen()
  ];

  @override
  Widget build(BuildContext context) {

    ScreenSize.init(context);

    return Scaffold(
      backgroundColor: AppThemes.background,

      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: pages[_selectedIndex],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: updateIndex,
        backgroundColor: AppThemes.dark,
        unselectedItemColor: AppThemes.basicText,
        selectedItemColor: AppThemes.emphasized,
        elevation: 8,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(label: 'Home',icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: 'History',icon: Icon(Icons.menu_book)),
          BottomNavigationBarItem(label: 'Exercise',icon: Icon(Icons.run_circle))
        ],
      ),
    );
  }
}