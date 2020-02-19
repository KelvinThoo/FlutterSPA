import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:ui' as ui;
import 'dart:html' as html;

class JsonPieChart extends StatefulWidget {
  final Widget child;

  JsonPieChart({Key key,this.child}) : super(key:key);

  @override
  _JsonPieChartState createState() { 
   return new _JsonPieChartState();
  }
}

class _JsonPieChartState extends State<JsonPieChart> {
  String createdViewId = "map_element";
  final _myState = new charts.UserManagedState<String>();

  generateJsonChart() {

     //Ignore the error, code still can compile normally
     ui.platformViewRegistry.registerViewFactory(
        createdViewId,
        (int viewId) => html.IFrameElement()
          ..width = '1800'
          ..height = '1400'
          ..src = "pieChart.html"
          ..style.border = 'none');

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Initiate data from backend
    generateJsonChart();
    super.initState();
  }
     
   @override
  Widget build(BuildContext context) {
      return Container(
        margin: EdgeInsets.all(1.0),
        padding: const EdgeInsets.all(30),
        decoration: new BoxDecoration(
        color: Colors.white,
        boxShadow: [new BoxShadow(
          color: Colors.black12,
          blurRadius: 15.0,
          ),]
        ),
          child:Center(
            child:Column(
              children: <Widget>[
                Text(
                  "JavaScript PieChart",
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),
                Expanded(
                  child:HtmlElementView(
                    viewType: createdViewId,
              )
            )
          ],
        )
      ),
    );
  }
}