import 'package:InformationWebsite/views/ChartView/chartview.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.6,1],
          colors: [Colors.white,Colors.blue]
        )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
          flex:10,
          child:Container(
            height:600,
            width:400,
            alignment: Alignment(-1.0, 0),
            child: Padding(
              padding: const EdgeInsets.only(left:80.0,right:180.0),
              child: CourseDetails(),
            )),
          ),
          Expanded(
            flex :5,
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,new MaterialPageRoute(builder: (context) => ChartPage()));
                },
                child: StartBtn('Get Started')),
            ),
          )
        ],
      ),
    );
  }
}
