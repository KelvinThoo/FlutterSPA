import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardsViewMobile extends StatelessWidget {
  const CardsViewMobile({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width:700,
      height:1500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.6,1],
          colors: [Colors.blue,Colors.blue[600]]
        )
      ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                          Container(
                          width: 300,
                          height: 400,
                          child: Card(                
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    child: Container(
                                      width: 300,
                                      height:200,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                            'assets/HongKong.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Row(
                                          children: <Widget>[    
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                  "Pie Chart",
                                                  style:TextStyle(
                                                    color:Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.left,   
                                                                                              
                                                ),
                                            ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  top:200,
                                  child:Container(
                                    width:300,
                                    height:150,
                                    color:Colors.white,
                                    child:Text(
                                      "A pie chart (or a circle chart) is a circular statistical graphic, which is divided into slices to illustrate numerical proportion. In a pie chart, the arc length of each slice (and consequently its central angle and area), is proportional to the quantity it represents.",
                                      textAlign: TextAlign.center,
                                      overflow:TextOverflow.clip,
                                    )
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                  
                       Container(
                          width: 300,
                          height: 400,
                          child: Card(                
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    child: Container(
                                      width: 300,
                                      height:200,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                            'assets/NYStreet.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Row(
                                          children: <Widget>[    
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                  "Bar Chart",
                                                  style:TextStyle(
                                                    color:Colors.white,
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.left,   
                                                                                              
                                                ),
                                            ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  top:200,
                                  child:Container(
                                    width:300,
                                    height:150,
                                    color:Colors.white,
                                    child:Text(
                                      "A pie chart (or a circle chart) is a circular statistical graphic, which is divided into slices to illustrate numerical proportion. In a pie chart, the arc length of each slice (and consequently its central angle and area), is proportional to the quantity it represents.",
                                      textAlign: TextAlign.center,
                                      overflow:TextOverflow.clip,
                                    )
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                  
                        Container(
                          width: 300,
                          height: 400,
                          child: Card(                
                              child: Stack(
                                children: <Widget>[
                                  Positioned(
                                    child: Container(
                                      width: 300,
                                      height:200,
                                      decoration: new BoxDecoration(
                                        image: new DecorationImage(
                                          image: new AssetImage(
                                            'assets/Rainbow.jpg'),
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      child: Row(
                                          children: <Widget>[    
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Text(
                                                  "Line Chart",
                                                  style:TextStyle(
                                                    color:Colors.white,
                                                    fontSize: 30,
                                                  ),
                                                  textAlign: TextAlign.left,   
                                                                                              
                                                ),
                                            ),
                                          
                                        ],
                                      ),
                                    ),
                                  ),
                                Positioned(
                                  top:200,
                                  child:Container(
                                    width:300,
                                    height:150,
                                    color:Colors.white,
                                    child:Text(
                                      "A pie chart (or a circle chart) is a circular statistical graphic, which is divided into slices to illustrate numerical proportion. In a pie chart, the arc length of each slice (and consequently its central angle and area), is proportional to the quantity it represents.",
                                      textAlign: TextAlign.center,
                                      overflow:TextOverflow.clip,
                                    )
                                  )
                                )
                              ],
                            ),
                          ),
                        ),
                ], 
              ),  
            );
          }
        }