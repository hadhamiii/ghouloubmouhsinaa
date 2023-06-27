import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertDon() {
  Get.defaultDialog(title: "تنبيه", middleText: "هل أنت متأكد؟", actions: [
    ElevatedButton(onPressed: () {}, child: const Text("نعم")),
    ElevatedButton(onPressed: () {}, child: const Text("لا"))
  ]);
  return Future.value(true);
}
