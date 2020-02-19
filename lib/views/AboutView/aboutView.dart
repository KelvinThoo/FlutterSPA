import 'package:InformationWebsite/views/AboutView/aboutViewDesktop.dart';
import 'package:InformationWebsite/views/AboutView/aboutViewMobile.dart';
import 'package:InformationWebsite/views/CardView/cardsViewDesktop.dart';
import 'package:InformationWebsite/views/Footer/footerDesk.dart';
import 'package:InformationWebsite/views/homeView_desktop.dart';
import 'package:InformationWebsite/views/homeView_mobile.dart';
import 'package:InformationWebsite/widgets/nav/nav.dart';
import 'package:InformationWebsite/widgets/navigationMobile_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:ui' as ui;

class AboutView extends StatelessWidget {
 
  const AboutView({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("About Chart"),
        elevation: 2.0,
      ),
      body:ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child:ConstrainedBox(constraints: BoxConstraints(maxWidth: double.infinity),
            child: Column(
              children: <Widget>[
                Expanded(
                child: ScreenTypeLayout.builder(
                 mobile: (BuildContext context) => Container(
                   child: SingleChildScrollView(
                      child: Column(
                       children: <Widget>[
                         AboutPageMobile()
                       ],
                     ),
                   ),
                 ),
                  desktop: (BuildContext context) => Container(
                    child : SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.only(left:0.0,right:0.0),
                        child: Column(
                          children: <Widget>[
                           AboutViewDesktop()
                              ],
                            ),
                          ),
                        )
                      ),
                    )
                  )
                ],
              ),
            ),
          )
        ),
      )
    );
  }
}
