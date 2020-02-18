import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:js' as js;

class FooterDesk extends StatelessWidget {
  const FooterDesk({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:600,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.7,1],
          colors: [Colors.blue[600],Colors.blue[100]]
        )
      ),
      child: Row(
        children: <Widget>[
          Expanded(
          flex: 8,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,top:60.0),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Container(
                    width: 500,
                    height: 300,
                    color:Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topLeft,
                                child: Text(
                                  "Hi,Friendly reminder here............................................",
                                  maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
          ),
            Expanded(
              flex:2,
                child: Align(
                  alignment: Alignment.bottomRight,
                    child: Container(
                    child: Row(
                    children: <Widget>[
                      IconButton(
                        icon:Image.asset("assets/ios.png"),
                        iconSize: 50,
                        onPressed: () {
                        js.context.callMethod('alert',['Going to Apple??']);
                        },
                      ),
                      IconButton(
                        icon: Image.asset("assets/android.png"),
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