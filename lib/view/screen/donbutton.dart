// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/view/widget/document/bankily.dart';
import 'package:ghouloubmouhsina/view/widget/document/massrivi.dart';
import 'package:ghouloubmouhsina/view/widget/document/sedad.dart';

class DonButton extends StatelessWidget {
  const DonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: AppColor.kPrimaryColor,
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              height: 150,
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text(
                    "jjjdjjdjjdjjdjjjndjjdduu djjduudu judjjjdu djjdjjdjjd nndhhhh",
                    style: TextStyle(color: AppColor.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    child: const Text(
                      "إرسال",
                      textAlign: TextAlign.center,
                    ),
                    backgroundColor: AppColor.kPrimaryColor,
                  )
                ],
              )),
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                children: [
                  Row(
                    children: [Massrivi(), Spacer(), Bankily()],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Sedad(),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
