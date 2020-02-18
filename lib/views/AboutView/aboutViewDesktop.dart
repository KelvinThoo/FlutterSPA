import 'package:InformationWebsite/views/PieChartDetails/pieChartDetails.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class AboutViewDesktop extends StatefulWidget {

 

  @override
  _AboutViewDesktopState createState() => _AboutViewDesktopState();
}

class _AboutViewDesktopState extends State<AboutViewDesktop> {
  var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: <Widget>[
          Container(
            height:screenheight,
            width: screenwidth,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops:[0.6,1],
              colors: [Colors.blue,Colors.blue[600]]
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
              )
            ),
          ),
          Expanded(
            flex :5,
            child: Center(
              child: StartBtn('Get Started'),
                  ),
                )
              ],
            ),
          ),
          Container(
            height:screenheight,
            width: screenwidth,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops:[0.6,1],
              colors: [Colors.blue[600],Colors.white]
                  )
                ),
               child:Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(1.0, 0),
                    child: Padding(
                     padding: const EdgeInsets.only(left:500.0,bottom: 400.0),
                      child: PieChartDetails()
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 200.0,bottom: 400),
                      child: Container(
                        width: screenwidth,
                        height: screenheight,
                        child: Image.asset("assets/Pie_Chart.png"),
                        ),
                    ),
                    )
                  ],
                )
              ),
              Container(
            height:screenheight,
            width: screenwidth,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops:[0.6,1],
              colors: [Colors.white,Colors.blue]
                  )
                ),
               child:Row(
                children: <Widget>[
                  Container(
                    alignment: Alignment(-1.0, 0),
                    child: Padding(
                     padding: const EdgeInsets.only(left:80.0,right:180.0),
                      child: Container(
                        child: Text(
                          "Pie Chart",
                          style: TextStyle(
                          fontSize: 40,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex:10,
                    child: Padding(
                      padding: const EdgeInsets.only(left:800),
                      child: Container(
                        width: screenwidth/2,
                        height: screenheight/2,
                        child: Image.asset("assets/Pie_Chart.png"),
                        ),
                    ),
                    )
                  ],
                )
              ),
        ],
      )
    );
  }
}