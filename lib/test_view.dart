// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ghouloubmouhsina/controller/test_data_controller.dart';
import 'package:ghouloubmouhsina/core/class/statusrequest.dart';
import 'package:lottie/lottie.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      appBar: AppBar(title: const Text("Title")),
      body: GetBuilder<TestController>(builder: (controller) {
        if (controller.statusRequest == StatusRequest.loading) {
          return Center(
            child: Lottie.asset('assets/lottie/loading.json',
                height: 200, width: 200),
          );
        } else if (controller.statusRequest == StatusRequest.offlinefailure) {
          return const Center(child: Text("Offline Failure"));
        } else if (controller.statusRequest == StatusRequest.serverfailure) {
          return const Center(child: Text("Server Failure"));
        } else {
          return ListView.builder(
              itemCount: controller.data.length,
              itemBuilder: (context, index) {
                return Text("${controller.data}");
              });
        }
      }),
    );
  }
}
