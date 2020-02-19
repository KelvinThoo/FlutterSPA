import 'package:InformationWebsite/views/AboutViewFilter/aboutViewFilter1.dart';
import 'package:InformationWebsite/views/ContentDetails/aboutChartDetails.dart';
import 'package:InformationWebsite/views/ContentDetails/barChartDetails.dart';
import 'package:InformationWebsite/views/ContentDetails/pieChartDetails.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtn.dart';
import 'package:InformationWebsite/widgets/websiteDetails/websiteDetails.dart';
import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:transparent_image/transparent_image.dart';

class AboutPageMobile extends StatefulWidget {

  @override
  _AboutPageMobileState createState() => _AboutPageMobileState();
}

class _AboutPageMobileState extends State<AboutPageMobile> with TickerProviderStateMixin{
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
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
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
         child: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top:30.0),
                child: AboutChartDetails(),
              ),
                  ),
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
              stops:[0.45,1],
              colors: [Colors.white,Colors.blueGrey[300]]
                  )
                ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
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
               child:Column(
                children: <Widget>[
                  Container(
                    height: screenheight,                 
                      child: PieChartDetails()
                  ),
                
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
               child:Column(
                children: <Widget>[
                  Container(
                    height: screenheight,
                      child: BarChartDetails()
                ), 
              ],
            )
          ),
        ],
      )
    );
  }
}