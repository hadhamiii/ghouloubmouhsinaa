import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';

class ContactezNous extends StatelessWidget {
  const ContactezNous({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroudlightcolor,
      appBar: AppBar(
        title: const Text("تواصل معنا"),
        backgroundColor: AppColor.kPrimaryColor,
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.backgroundcolor),
            width: 400,
            height: 70,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.phone,
                color: AppColor.kPrimaryColor,
              ),
              title: const Text(
                "+22237777707",
                style:
                    TextStyle(fontFamily: "Cairo", fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.backgroundcolor),
            width: 400,
            height: 70,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.mail,
                color: AppColor.kPrimaryColor,
              ),
              title: const Text(
                "ghouloumouhsina@gmail.com",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.backgroundcolor),
            width: 400,
            height: 70,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.facebook,
                color: AppColor.kPrimaryColor,
              ),
              title: const Text(
                "جمعية قلوب محسنة",
                style: TextStyle(
                    fontSize: 17,
                    color: AppColor.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
