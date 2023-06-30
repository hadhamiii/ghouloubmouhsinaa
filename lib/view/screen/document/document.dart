import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/document/documentcontroller.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/home/customappbar.dart';

class Document extends StatelessWidget {
  const Document({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DocumentControllerImp());
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: AppColor.kPrimaryColor,
            title: CustomAppBar(
                titleappbar: "", onPressedIcon: () {}, onPressedSearch: () {}),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Column(children: [
                  ListTile(
                    onTap: () {},
                    title: const Text(
                      "data",
                    ),
                    leading: const Icon(Icons.first_page),
                  ),
                  ListTile(
                    onTap: () {},
                    title: const Text("data"),
                    leading: const Icon(Icons.first_page),
                  ),
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
