import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_workout_tracker_app/design/themes.dart';
import 'package:new_workout_tracker_app/providers/userProvider.dart';
import 'package:new_workout_tracker_app/screens/settings/settings_screen.dart';
class HomeScreen  extends StatefulWidget{
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  StreamController<String> streamController = StreamController();
  late Stream<String> dataStream;
  TextEditingController textController = TextEditingController();

  @override
  void initState() {
    dataStream = streamController.stream.asBroadcastStream();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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

        StreamBuilder<String>(
          stream: dataStream,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Text(
              snapshot.data ?? '',
              style: TextStyle(color: AppThemes.basicText, fontSize: 20),
              );
            }
            else{
              return Text(
              'No name set',
              style: TextStyle(color: AppThemes.basicText, fontSize: 20),
              );
            }
          },
        ),
        SizedBox(height: 30),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: ScreenSize.width * 0.3,
              height: ScreenSize.height * 0.05,
              child: TextField(
                controller: textController,
                style: TextStyle(color: AppThemes.basicText),
                decoration: InputDecoration(              
                  hintText: 'Enter a name'
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              color: AppThemes.emphasized,
              width: ScreenSize.width * 0.2,
              height: ScreenSize.height * 0.05,
              child: FloatingActionButton(
                backgroundColor: AppThemes.emphasized,
                foregroundColor: AppThemes.basicText,
                onPressed: (){
                  streamController.add(textController.text);
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
        StreamBuilder<String>(
          stream: dataStream,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Text(
              snapshot.data ?? '',
              style: TextStyle(color: AppThemes.basicText, fontSize: 20),
              );
            }
            else{
              return Text(
              'No name set',
              style: TextStyle(color: AppThemes.basicText, fontSize: 20),
              );
            }
          },
        ),
      ],
    );
  }
}