import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:InformationWebsite/models/incident.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PieChartPage extends StatefulWidget {  
  final Widget child;

PieChartPage({Key key, this.child}) : super(key: key);

  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> with TickerProviderStateMixin {
  Random random = new Random();
  List<charts.Series<Incident, String>> _seriesPieData;
  var isLoading = false;
  List colors = [Colors.blue, Colors.red, Colors.green,Colors.yellow]; 
  int index = 0;
  
  void changeIndex() {
    setState(() {
      index = random.nextInt(4);
    });
  }

  Future<List<Incident>> getData() async {
    var data = await http.get('http://localhost:8080/versionId');

    var jsonData = json.decode(data.body);

    List<Incident> incidents = [];

    for(var u in jsonData) {
    Incident incident = new Incident(u['versionId'],u['counter']);  

    incidents.add(incident); 
  }

  return incidents;
  
}

  _generateData() async {
 
  _seriesPieData.add(
      charts.Series(
        domainFn: (Incident incident, _) => incident.versionId,
        measureFn: (Incident incident, _) => incident.counter,
        id: 'Incident',
        data: await getData(),
         labelAccessorFn: (Incident row, _) => '${row.counter}',
      ),
    );
  }

 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesPieData = List<charts.Series<Incident,String>>();
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
        child:FutureBuilder(
        future:getData(),
        builder:(BuildContext context, AsyncSnapshot snapshot){
        
        if(snapshot.data == null){
            return Container(
              child:Center(
              child: SpinKitRotatingCircle(
                color:Colors.blue,
                size:50.0,
                 controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 2200)),
              )
            )
          );
        }

        return Container(
          child:Center(
            child:Column(
              children: <Widget>[
                Text(
                  "Pie Chart",
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),

                Expanded(
                  child:charts.PieChart(
                    _seriesPieData,
                    animate:true,
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
                      ]),  
                    )
                  )
                ],
              )
            )
          );
        }
      ),
    );
  }
}