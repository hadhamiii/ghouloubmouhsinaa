import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class Qauran extends StatelessWidget {
  const Qauran({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(15),
          height: 50,
          width: 400,
          child: const Text(
            " ﴾وَأَحْسِنُوا إِنَّ اللَّهَ يُحِبُّ الْمُحْسِنِينَ ﴿",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 22,
                fontFamily: "QuranSurah1-mLKO5",
                color: AppColor.kPrimaryLightColor),
          ),
        )
      ],
    );
  }
}
