import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/document/documentcontroller.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbar.dart';

class Document extends StatelessWidget {
  const Document({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DocumentControllerImp());
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          CustomAppBar(
              titleappbar: "", onPressedIcon: () {}, onPressedSearch: () {}),
        ]),
      ),
    );
  }
}
