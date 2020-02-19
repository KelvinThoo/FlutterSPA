import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';

/// Returns the style for a page title based on the [deviceScreenType] passed in.
TextStyle titleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = deviceScreenType == DeviceScreenType.Mobile ? 30 : 60;
  return TextStyle(
      fontWeight: FontWeight.w800, height: 0.9, fontSize: titleSize);
}

/// Return the style for description text on a page based on the [deviceScreenType] passed in.
TextStyle descriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize =
      deviceScreenType == DeviceScreenType.Mobile ? 16 : 21;

  return TextStyle(
    fontSize: descriptionSize,
    height: 1.7,
  );
}

TextStyle aboutpageDescriptionTextStyle(DeviceScreenType deviceScreenType) {
  double descriptionSize = 
        deviceScreenType == DeviceScreenType.Mobile ? 12 : 17;

  return TextStyle(
    fontSize: descriptionSize,
    height : 1.7,
    color: Colors.white,
  );
}

TextStyle aboutpageTitleTextStyle(DeviceScreenType deviceScreenType) {
  double titleSize = 
        deviceScreenType == DeviceScreenType.Mobile ? 30 : 50;

  return TextStyle(
    fontSize: titleSize,
    height : 0.9,
    color: Colors.white,
  );
}


