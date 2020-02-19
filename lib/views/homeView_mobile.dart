import 'package:InformationWebsite/views/ChartView/chartview.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class HomeContentMobile extends StatefulWidget {
   @override
  _HomeContentMobileState createState() => _HomeContentMobileState();
}

class _HomeContentMobileState extends State<HomeContentMobile> {
var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;


  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenwidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.4,1],
          colors: [Colors.white,Colors.blue[100]]
        )
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CourseDetails(),
          SizedBox(
            height: 100,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,new MaterialPageRoute(builder: (context) => ChartPage()));
            },
            child: StartBtn('Get Started')),
        ],
      ),
    );
  }
}

