import 'package:InformationWebsite/views/homeView_desktop.dart';
import 'package:InformationWebsite/views/homeView_mobile.dart';
import 'package:InformationWebsite/widgets/centeredView/centeredView.dart';
import 'package:InformationWebsite/widgets/nav/nav.dart';
import 'package:InformationWebsite/widgets/navigationMobile_drawer/navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
        body: CenteredView(
            child: Column(
              children: <Widget>[
                NavigationBar(),
                SizedBox(
                  height: 50,
                ),
                Expanded(
                    child: ScreenTypeLayout.builder(
                 mobile: (BuildContext context) => Container(
                   child: Column(
                     children: <Widget>[
                       HomeContentMobile()
                     ],
                   ),
                 ),
                  desktop: (BuildContext context) => Container(
                    child : SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          HomeContentDesktop(),
                          HomeContentDesktop(),
                          HomeContentDesktop(),
                        ],
                      ),
                    )
                  ),
                ))
              ],
            ),
          ),
      ),
    );
  }
}
