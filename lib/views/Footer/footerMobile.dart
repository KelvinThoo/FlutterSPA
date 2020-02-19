import 'package:InformationWebsite/views/Footer/footerBox.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:js' as js;
import 'dart:ui' as ui;

class FooterMobile extends StatefulWidget {
  @override
  _FooterMobileState createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:screenheight/2,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.7,1],
          colors: [Colors.blue[100],Colors.white]
        )
      ),
      child: Column(
        children: <Widget>[
          Flexible(
          flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left:50.0,top:60.0),
              child: Align(
                alignment: Alignment.topLeft,
                  child: FooterBox(),
                  ),
                ),
          ),
            Expanded(
              flex:2,
                child: Align(
                  alignment: Alignment.topCenter,
                    child: Container(
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        icon:Image.asset("assets/Facebook.png"),
                        iconSize: 50,
                        onPressed: () {
                        js.context.callMethod('open',['https://facebook.com']);
                        },
                      ),
                      IconButton(
                        icon: Image.asset("assets/Twitter.png"),
                        iconSize: 50, 
                        onPressed: () {
                        js.context.callMethod('open',['https://twitter.com']);
                        }
                      ),
                      IconButton(
                        icon: Image.asset("assets/android.png"),
                        iconSize: 50, 
                        onPressed: () {
                        js.context.callMethod('alert',['Going to Android??']);
                        }
                      ),
                      IconButton(
                        icon: Image.asset("assets/ios.png"),
                        iconSize: 50, 
                        onPressed: () {
                        js.context.callMethod('alert',['Going to Android??']);
                        }
                      ),
                    ],
                  )  
                ),
              ),
            )
            ],
          ),
    );
  }
}