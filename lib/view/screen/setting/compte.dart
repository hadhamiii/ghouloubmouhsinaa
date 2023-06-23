import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class Compte extends StatelessWidget {
  const Compte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
        title: const Text(
          "معلوماتي",
          style: TextStyle(color: AppColor.backgroundcolor),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
