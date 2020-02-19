import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:InformationWebsite/styles/text_styles.dart';

class BarChartDetails extends StatelessWidget {
  const BarChartDetails({Key key}) : super(key: key);

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
                'Bar Chart',
                style: aboutpageTitleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'A bar chart or bar graph is a chart or graph that presents categorical data with rectangular bars with heights or lengths proportional to the values that they represent. The bars can be plotted vertically or horizontally. ... A bar graph shows comparisons among discrete categories.',
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
