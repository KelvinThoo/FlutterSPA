import 'package:InformationWebsite/views/CardView/cardsViewDesktop.dart';
import 'package:InformationWebsite/views/CardView/cardsViewMobile.dart';
import 'package:InformationWebsite/widgets/nav/navbar_desktop.dart';
import 'package:InformationWebsite/widgets/nav/navbar_mobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CardsView extends StatelessWidget {
  const CardsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CardsViewMobile(),
      tablet: CardsViewDesk(),
    );
  }
}
