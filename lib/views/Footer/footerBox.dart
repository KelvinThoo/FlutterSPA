import 'package:InformationWebsite/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterBox extends StatelessWidget {

 const FooterBox({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var widthSize =
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? 500.0
                : 390.0;

        var widthHeight = 
            sizingInformation.deviceScreenType == DeviceScreenType.Desktop
                ? 300.0
                : 250.0;
        

        return Container(
          width: widthSize,
          height: widthHeight,
          color:Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
                child: Row(                       
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                        child: Text(
                          "Hi,Friendly reminder here............................................",
                            maxLines: 2,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        }