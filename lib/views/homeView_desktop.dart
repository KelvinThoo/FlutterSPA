import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
        flex:12,
        child:Container(
          height:600,
          width:400,
          alignment: Alignment(-1.0, 0),
          child: CourseDetails()),
        ),
        Expanded(
          flex :3,
          child: Center(
            child: StartBtn('Get Started'),
          ),
        )
      ],
    );
  }
}
