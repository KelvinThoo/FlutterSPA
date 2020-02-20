import 'package:InformationWebsite/views/AboutViewFilter/aboutViewFilter1.dart';
import 'package:InformationWebsite/views/ContentDetails/aboutChartDetails.dart';
import 'package:InformationWebsite/views/ContentDetails/barChartDetails.dart';
import 'package:InformationWebsite/views/ContentDetails/pieChartDetails.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:transparent_image/transparent_image.dart';

class AboutViewDesktop extends StatefulWidget {

  @override
  _AboutViewDesktopState createState() => _AboutViewDesktopState();
}

class _AboutViewDesktopState extends State<AboutViewDesktop> with TickerProviderStateMixin{
  var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;
  AnimationController controller;
  Animation<double> animation;

@override
initState() {
  super.initState();
  controller = AnimationController(
  duration: const Duration(milliseconds: 1000), vsync: this);
  animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
  controller.forward();
} 

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
              stops:[0.8,1],
              colors: [Colors.blue,Colors.white]
              )
            ),
         child: Row(
          children: <Widget>[
          Expanded(
          flex:5,
          child:Container(
            height:600,
            width:800,
            alignment: Alignment(1.0, 0),
            child: Padding(
              padding: const EdgeInsets.only(left:80.0,bottom: 200),
              child: AboutChartDetails(),
              )
            ),
          ),
          Expanded(
            flex :5,
            child: FadeTransition(
              opacity: animation,
              child: Container(
                width:screenwidth/1.4,
                height:screenheight/1.4,
                child: Image.asset("assets/Charts.png")
                    )
                  )
                )
              ],
            ),
          ),
          Container(
            height:screenheight/3,
            width: screenwidth,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops:[0.45,1],
              colors: [Colors.white,Colors.blueGrey[300]]
                  )
                ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left:200.0,bottom: 100),
                  child: AboutPageFilter(),
                )
                ),
              ),
          Container(
            height:screenheight,
            width: screenwidth,
            decoration: BoxDecoration(
            gradient: LinearGradient(
              begin:Alignment.topCenter,
              end:Alignment.bottomCenter,
              stops:[0,1],
              colors: [Colors.blueGrey[300],Colors.blueGrey[300]]
                  )
                ),
               child:Row(
                children: <Widget>[
                  Container(
                    height: screenheight,
                    alignment: Alignment(1.0, 0),
                    child: Padding(
                     padding: const EdgeInsets.only(left:100.0,bottom: 200.0,top:20),
                      child: PieChartDetails()
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 100.0,bottom: 200,top:20),
                      child: FadeTransition(
                        opacity: animation,
                          child: Container(
                          width: screenwidth,
                          height: screenheight,
                          child: Image.asset("assets/Pie_Chart.png"),
                          ),
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
              colors: [Colors.blueGrey[300],Colors.blueGrey[100]]
                  )
                ),
               child:Row(
                children: <Widget>[
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 100.0,bottom: 200,top:20),
                      child: Container(
                        width: screenwidth,
                        height: screenheight,
                        child: Image.asset("assets/Bar_Chart.png"),
                      ),
                    ),
                  ),
                  Container(
                    height: screenheight,
                    alignment: Alignment(1.0, 0),
                    child: Padding(
                     padding: const EdgeInsets.only(right:100,bottom: 300.0,top:20),
                      child: BarChartDetails()
                  ),
                ), 
              ],
            )
          ),
        ],
      )
    );
  }
}