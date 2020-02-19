import 'dart:math';

import 'package:InformationWebsite/models/submodule.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BarChartPage extends StatefulWidget {  
  final Widget child;

BarChartPage({Key key, this.child}) : super(key: key);

  @override
  _BarChartPageState createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> with TickerProviderStateMixin {
  Random random = new Random();
  List<charts.Series<SubModule, String>> _seriesData2;


  Future<List<SubModule>> getData() async {
    var data = await http.get('http://localhost:8080/subModule');

    var jsonData = json.decode(data.body);

    List<SubModule> subs = [];

    for(var u in jsonData) {
      
    SubModule sub = new SubModule(u['submoduleId'],u['counter']);

    subs.add(sub);

  }

  print(subs.length);

  return subs;

  
}

  _generateData() async {
 
  _seriesData2.add(
      charts.Series(
        domainFn: (SubModule sub, _) => sub.submoduleId,
        measureFn: (SubModule sub, _) => sub.counter,
        id: 'Incident',
        data: await getData(),
         labelAccessorFn: (SubModule sub, _) => '${sub.counter}',
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _seriesData2 = List<charts.Series<SubModule,String>>();
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
              child: SpinKitCubeGrid(
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
                  "Bar Chart filtered with SubModuleId",
                  style:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )
                ),

                Expanded(
                  child:charts.BarChart(
                    _seriesData2,
                    animate:true,
                    vertical: false,
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
 


 