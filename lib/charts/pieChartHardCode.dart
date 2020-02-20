import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:InformationWebsite/models/incident.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PieChartPage2 extends StatefulWidget {  
  final Widget child;

PieChartPage2({Key key, this.child}) : super(key: key);

  @override
  _PieChartPage2State createState() => _PieChartPage2State();
}

class _PieChartPage2State extends State<PieChartPage2> with TickerProviderStateMixin {
  List<charts.Series<LinearSales, String>> _seriesPieData;
  var isLoading = false;


  static List<LinearSales> _createSampleData() {

    final data = [
      new LinearSales(2000, 100),
      new LinearSales(2001, 200),
      new LinearSales(2002, 400),
      new LinearSales(2003, 650),
    ];

    return data;

  }

   _generateData() async {
 
  _seriesPieData.add(
      charts.Series(
        domainFn: (LinearSales sales, _) => sales.year.toString(),
        measureFn: (LinearSales sales, _) => sales.sales,
        id: 'Sales',
        data: _createSampleData(),
      ),
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<LinearSales,String>>();
    _generateData();
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
        child: Container(
          child:Center(
            child:Column(
              children: <Widget>[
                Text(
                  "Pie Chart with hardcode data",
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),

                Expanded(
                  child:charts.PieChart(
                    _seriesPieData,
                    animate:false,
                    animationDuration : Duration (seconds:2),
                    behaviors: [
                      new charts.DatumLegend(
                          outsideJustification: charts.OutsideJustification.startDrawArea,
                          horizontalFirst: false,
                          desiredMaxRows: 2,
                          cellPadding: new EdgeInsets.only(left: 4.0, bottom: 4.0),
                          entryTextStyle: charts.TextStyleSpec(
                            color: charts.MaterialPalette.purple.shadeDefault,
                            fontFamily: 'Georgia',
                            fontSize: 11),
                      )
                    ],
                      defaultRenderer: new charts.ArcRendererConfig(
                      arcWidth: 100,
                      arcRendererDecorators: [
                        new charts.ArcLabelDecorator(
                          labelPosition: charts.ArcLabelPosition.outside)
                          ]
                        ),  
                      )
                    )
                  ],
                )
              )
            )
          );
        }
      }


class LinearSales {
  final int year;
  final int sales;

  LinearSales(this.year, this.sales);
}