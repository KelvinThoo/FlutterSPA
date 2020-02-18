import 'package:flutter/material.dart';

class CardContent {
  const CardContent({
    @required this.assetName,
    @required this.title,
    @required this.description,
  }) : assert(assetName != null),
       assert(title != null),
       assert(description != null);

  final String assetName;
  final String title;
  final String description;
}


const List<CardContent> cardsContent = <CardContent>[
  CardContent(
    assetName: 'assets/HongKong.jpg', 
    title: 'Pie Chart', 
    description: 'Card that shows description of pie chart'),
  CardContent(
    assetName: 'assets/NYStreet.jpg', 
    title: 'Bar Chart', 
    description: 'Card that shows description of bar chart'),
  CardContent(
    assetName: 'assets/Rainbow.jpg', 
    title: 'Line Chart', 
    description: 'Card that shows description of line chart'),
];