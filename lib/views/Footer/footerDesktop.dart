import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height:500,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin:Alignment.topCenter,
          end:Alignment.bottomCenter,
          stops:[0.8,1],
          colors: [Colors.blue[600],Colors.blue]
        )
      ),
      child: Column(
      ),
    );
  }
}