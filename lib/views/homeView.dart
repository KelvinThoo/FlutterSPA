import 'package:InformationWebsite/views/CardView/cardsView.dart';
import 'package:InformationWebsite/views/CardView/cardsViewDesktop.dart';
import 'package:InformationWebsite/views/Footer/footerDesk.dart';
import 'package:InformationWebsite/views/Footer/footerMobile.dart';
import 'package:InformationWebsite/views/homeView_desktop.dart';
import 'package:InformationWebsite/views/homeView_mobile.dart';
import 'package:InformationWebsite/widgets/nav/nav.dart';
import 'package:InformationWebsite/widgets/navigationMobile_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:ui' as ui;

import 'homeView_desktop.dart';
import 'homeView_mobile.dart';

class HomeView extends StatelessWidget {
 
  const HomeView({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Container(
          child:ConstrainedBox(constraints: BoxConstraints(maxWidth: double.infinity),
            child: Column(
              children: <Widget>[
                NavigationBar(),    
                Expanded(
                child: ScreenTypeLayout.builder(
                 mobile: (BuildContext context) => Container(
                   child: SingleChildScrollView(
                      child: Column(
                       children: <Widget>[
                         HomeContentMobile(),
                         CardsView(),
                         FooterMobile()
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
                            HomeContentDesktop(),
                            CardsView(),
                            FooterDesk(),
                          ],
                        ),
                      ),
                    )
                  ),
                ))
              ],
            ),
          ),
        )
      ),
    );
  }
}
