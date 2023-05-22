import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(title: "", middleText: "", actions: [
    ElevatedButton(
        onPressed: () {
          exit(0);
        },
        child: Text("")),
    ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text(""))
  ]);
  return Future.value(true);
}
