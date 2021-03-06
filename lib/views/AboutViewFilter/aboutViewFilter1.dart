import 'package:InformationWebsite/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class AboutPageFilter extends StatelessWidget {

 const AboutPageFilter({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? TextAlign.left
                : TextAlign.center;

        var axisAlignment = 
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.center;
        

        return Container(
          width: 600,
          child: Column(
            crossAxisAlignment: axisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Text(
                  'List of Charts',
                  style: titleTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                )
            ],
          ),
        );
      },
    );
  }
}