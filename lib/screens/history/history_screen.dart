import 'package:flutter/widgets.dart';
import '../../design/design.dart';

class HistoryScreen  extends StatefulWidget{
  HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            primary: false,
            itemBuilder: (context, index){
              return Container(
                width: ScreenSize.width * 0.8,
                decoration: BoxDecoration(
                  color: AppThemes.background,
                  border: Border.all(color: AppThemes.border),
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 20,
                  itemBuilder: (context, index){
                    return Row(children: [Text('sdfsdfsadfsadfsdfsafsafsdfsfs', style: AppTStyles.basicMedium,)],);
                  }
                ),
              );
            },
          )
        ],
      ),
    );
  }
}