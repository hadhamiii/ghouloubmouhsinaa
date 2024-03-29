// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/home/aceil_controller.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class PostCard extends GetView<AccueilControllerImp> {
  const PostCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
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
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Image.asset(
            ImageAsset.oumssiye,
            height: 100,
            width: 350,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
