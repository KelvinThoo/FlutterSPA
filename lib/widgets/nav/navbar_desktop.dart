import 'package:InformationWebsite/widgets/nav/nav_logo.dart';
import 'package:InformationWebsite/widgets/navbarItem/navbarItem.dart';
import 'package:flutter/material.dart';
import 'package:InformationWebsite/views/ChartView/chartview.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left:50.0),
            child: Container(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: NavBarLogo(),
            ),
            ),
          ),
          Flexible(
          flex:13,
          child :Padding(
            padding: const EdgeInsets.only(right:50.0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                FlatButton(
                  onPressed: (){
                    Navigator.push(context,new MaterialPageRoute(builder: (context) => ChartPage()));
                  },
                  child : Text(
                  ('Charts'),
                  style: TextStyle(fontSize: 18),),
                ),
                SizedBox(
                  width: 40,
                ),
                NavBarItem('About'),
                ],
              ),
          )
          ),
        ],
      ),
    );
  }
}