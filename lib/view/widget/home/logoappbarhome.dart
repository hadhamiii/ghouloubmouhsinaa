import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class LogoAppBarHome extends StatelessWidget {
  const LogoAppBarHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
        backgroundColor: const Color.fromARGB(255, 239, 238, 238),
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: Image.asset(
            ImageAsset.logogh,
            width: 350,
          ),
        ));
  }
}
