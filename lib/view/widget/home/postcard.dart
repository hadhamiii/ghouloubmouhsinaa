import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class PostCard extends GetView<AccueilControllerImp> {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return const post();
          }),
    );
  }
}

class post extends StatelessWidget {
  const post({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color.fromARGB(255, 218, 248, 235),
          ),
          height: 199,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            ImageAsset.oumssiye,
            height: 100,
            width: 300,
            fit: BoxFit.fill,
          ),
        ),
        const Text(
          " ﴾وَأَحْسِنُوا إِنَّ اللَّهَ يُحِبُّ الْمُحْسِنِينَ ﴿",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22,
              fontFamily: "QuranSurah01-w1yO6",
              fontWeight: FontWeight.w200,
              color: AppColor.kPrimaryColor),
        ),
      ],
    );
  }
}
