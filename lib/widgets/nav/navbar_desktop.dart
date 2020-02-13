import 'package:InformationWebsite/widgets/nav/nav_logo.dart';
import 'package:InformationWebsite/widgets/navbarItem/navbarItem.dart';
import 'package:flutter/material.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Flexible(
          flex:1,
          child:NavBarLogo(),
          ),
          Flexible(
          flex:12,
          child :Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem('Charts'),
              SizedBox(
                width: 60,
              ),
              NavBarItem('About'),
              ],
            )
          ),
        ],
      ),
    );
  }
}