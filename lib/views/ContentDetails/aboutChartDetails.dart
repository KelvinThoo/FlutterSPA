import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:InformationWebsite/styles/text_styles.dart';

class AboutChartDetails extends StatelessWidget {
  const AboutChartDetails({Key key}) : super(key: key);

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
                'INTRODUCING\nTHE "CHARTS"',
                style: aboutpageTitleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'In this website, you will be able to find all sorts of data you want provided with a chart view. To view some sample data click "Charts" on top of the website to get more details',
                style: aboutpageDescriptionTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              )
            ],
          ),
        );
      },
    );
  }
}
