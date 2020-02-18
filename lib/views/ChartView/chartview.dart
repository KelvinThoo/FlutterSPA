import 'package:InformationWebsite/charts/jsonPieChart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'dart:ui' as ui;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:InformationWebsite/charts/pieChart.dart';

class ChartPage extends StatefulWidget {
  @override
  _ChartPageState createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> with TickerProviderStateMixin {

  TabController _tabController;
  int active = 0;
  static var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  static var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;
  
  int flexScreenWidth = screenwidth.toInt();
  int flexScreenHeight = screenheight.toInt();

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4, initialIndex: 0)
    ..addListener(() {
      setState(() {
        active = _tabController.index;
      });
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Charts'),
        elevation: 2.0,
      ),
      body: Container(
          child : Row(
            children: <Widget>[
                  Expanded(
                    flex: 2,
                    child:SideMenuBar(false)
                  ),
                  Flexible(
                      flex:8,
                      child:Column(
                        children: <Widget>[
                          Flexible(
                            flex:2,
                            child:TicketList(),
                          ),
                          Expanded(
                            flex:6,
                            child:TabBarView(
                              controller: _tabController,
                              children: <Widget>[
                                PieChartPage(),
                                JsonPieChart(),
                                PieChartPage(),
                                PieChartPage(),
                              ],
                            ),
                          ),
                        ],
                      )
                    ), 
          ],)
      ),
    );
  }


    Widget SideMenuBar(bool drawerStatus) {
    return Container(
       margin: EdgeInsets.all(5.0),
       decoration: new BoxDecoration(
         color: Colors.white,
         boxShadow: [new BoxShadow(
           color: Colors.black12,
           blurRadius: 30.0
         )]
       ),

       child: Column(
         mainAxisSize: MainAxisSize.max,
         children: <Widget>[
           FlatButton(
             color: _tabController.index == 0? Color.fromRGBO(220, 220, 220, 1.0) : Colors.white,
             onPressed: (){
                _tabController.animateTo(0);
                drawerStatus ? Navigator.pop(context) : print("");
             },

             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
               child: Row(
                 children: <Widget>[
                   Icon(FontAwesomeIcons.chartPie),
                   SizedBox(width: 8),
                   Flexible(
                       child: Container(   
                         child: AutoSizeText(
                           "Pie Chart",
                           maxLines: 1,
                           overflow: TextOverflow.fade,
                           style: TextStyle(fontSize: 18),
                           minFontSize: 15,),
                    ),
                  ),
                ],
              )
            ),
          ),

           FlatButton(
                color: _tabController.index == 1? Color.fromRGBO(220, 220, 220, 1.0) : Colors.white,
             onPressed: (){
                _tabController.animateTo(1);
                drawerStatus ? Navigator.pop(context) : print("");
             },

             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
               child: Row(
                 children: <Widget>[
                   Icon(FontAwesomeIcons.solidChartBar),
                   SizedBox(width: 8),
                   Flexible(
                       child: Container(   
                         child: AutoSizeText(
                           "AmCharts 4 Chart",
                           maxLines: 1,
                           overflow: TextOverflow.fade,
                           style: TextStyle(fontSize: 18),
                           minFontSize: 15,),
                    ),
                  ),
                ],
               )
             ),
           ),

           FlatButton(
                color: _tabController.index == 2? Color.fromRGBO(220, 220, 220, 1.0) : Colors.white,
             onPressed: (){
                _tabController.animateTo(2);
                drawerStatus ? Navigator.pop(context) : print("");
             },

             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
               child: Row(
                 children: <Widget>[
                   Icon(FontAwesomeIcons.solidChartBar),
                   SizedBox(width: 8),
                     Flexible(
                       child: Container(   
                         child: AutoSizeText(
                           "Pie Chart Sample",
                           maxLines: 1,
                           overflow: TextOverflow.fade,
                           style: TextStyle(fontSize: 18),
                           minFontSize: 15,),
                    ),
                  ),
                ],
              )
            ),
          ),

           FlatButton(
                color: _tabController.index == 3? Color.fromRGBO(220, 220, 220, 1.0) : Colors.white,
             onPressed: (){
                _tabController.animateTo(3);
                drawerStatus ? Navigator.pop(context) : print("");
             },

             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
               child: Row(
                 children: <Widget>[
                   Icon(FontAwesomeIcons.solidChartBar),
                   SizedBox(width: 8),
                  Flexible(
                       child: Container(   
                         child: AutoSizeText(
                           "Pie Chart Sample 2",
                           maxLines: 1,
                           overflow: TextOverflow.fade,
                           style: TextStyle(fontSize: 18),
                           minFontSize: 15,),
                    ),
                  ),
                ],
              )
            ),
          ),
        
        ]
      )
    );
  }
}

class TicketList extends StatefulWidget {
  @override
  _TicketListState createState() => _TicketListState();
}

class _TicketListState extends State<TicketList> {

  var screenwidth = ui.window.physicalSize.width / ui.window.devicePixelRatio;
  var screenheight = ui.window.physicalSize.height / ui.window.devicePixelRatio;
 
  List<Ticket> tickets = [
      Ticket(text: 'View Details', numbers : '13', colorCode: Colors.red, newItems: 'new Ticket',icon: 'assets/shopping_cart.png'),
      Ticket(text: 'View Details', numbers : '14', colorCode: Colors.yellow[600], newItems: 'new Items',icon: 'assets/shopping_cart.png'),
      Ticket(text: 'View Details', numbers : '15', colorCode: Colors.green, newItems: 'new Items',icon: 'assets/shopping_cart.png'),
      Ticket(text: 'View Details', numbers : '16', colorCode: Colors.blue, newItems: 'new Items',icon: 'assets/shopping_cart.png'),
    ];
  
    Widget cardState(ticket){
      return Card(
        child : Container(
        width:screenwidth / 6,
        height:screenheight / 5,  
        color: ticket.colorCode,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
            child : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(ticket.icon,
                      width:30,
                      )
                    ),
                  ),
                  Text(
                    ticket.text,
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      ),
                    ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    ticket.numbers,
                    style:TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      ),
                    ),
                  Text(
                    ticket.newItems,
                    style:TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      ),
                  ),
                  ],
                ),
              ]
            ),
          )
        ),
      );
  }
  
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body:Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: tickets.map((ticket) => cardState(ticket)).toList(),
          ),
        )
      );
    }
  }
  
  @immutable
  class Ticket {
    final String text;
    final String numbers;
    final Color colorCode;
    final String newItems;
    final String icon;

    const Ticket({
      @required this.text,
      @required this.numbers,
      @required this.colorCode,
      @required this.newItems,
      @required this.icon,
    });
}