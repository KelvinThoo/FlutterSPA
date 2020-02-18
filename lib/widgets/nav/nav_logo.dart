import 'package:flutter/material.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.topLeft,
          child: SizedBox(
          height: 200,
          child: Image.asset('assets/logo.png'),
        ),
      ),
    );
  }
}
