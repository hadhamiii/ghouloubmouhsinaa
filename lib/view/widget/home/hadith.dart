import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 50,
      width: 400,
      child: const Text(
        "(ما نَقَصَتْ صَدَقَةٌ مِن مالٍ)",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 22,
            fontFamily: "QuranSurah01-w1yO6",
            fontWeight: FontWeight.w200,
            color: AppColor.black),
      ),
    );
  }
}
