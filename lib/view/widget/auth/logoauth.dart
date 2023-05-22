import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 70,
        backgroundColor: const Color.fromARGB(255, 239, 238, 238),
        child: Padding(
          padding: const EdgeInsets.all(0), // Border radius
          child: ClipOval(
            child: Image.asset(
              ImageAsset.logo,
              width: 200,
            ),
          ),
        ));
  }
}
