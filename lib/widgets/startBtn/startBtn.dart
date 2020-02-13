import 'package:InformationWebsite/widgets/startBtn/startBtnDesktop.dart';
import 'package:InformationWebsite/widgets/startBtn/startBtnMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class StartBtn extends StatelessWidget {
  final String title;
  StartBtn(this.title);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: StartBtnMobile(title),
      tablet: StartBtnDesktop(title),
    );
  }
}
