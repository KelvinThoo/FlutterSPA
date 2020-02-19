import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:InformationWebsite/styles/text_styles.dart';

class PieChartDetails extends StatelessWidget {
  const PieChartDetails({Key key}) : super(key: key);

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
          width: 400,
          child: Column(
            crossAxisAlignment: axisAlignment,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Pie Chart',
                style: aboutpageTitleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'A pie chart (or a circle chart) is a circular statistical graphic, which is divided into slices to illustrate numerical proportion. In a pie chart, the arc length of each slice (and consequently its central angle and area), is proportional to the quantity it represents.',
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
