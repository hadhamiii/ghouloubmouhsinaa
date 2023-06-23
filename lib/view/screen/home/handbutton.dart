import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class HandButton extends StatelessWidget {
  const HandButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            centerTitle: true,
            backgroundColor: AppColor.kPrimaryLightColor,
            title: const Text(
              "تبرع للمعرض",
              style: TextStyle(
                  color: AppColor.backgroundcolor, fontFamily: "Cairo"),
            ),
            actions: const [
              Icon(
                Icons.more_vert,
                size: 30,
                color: AppColor.backgroundcolor,
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 400,
                  child: Image.asset(
                    ImageAsset.maarad,
                    width: 370,
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(10),
                  height: 300,
                  child: Column(
                    children: [
                      const Text(
                        "معرض جمعية قلوب محسنة يستقبل جميع تبرعاتكم سواءً كانت جديدة أو قديمة يكفي أن تقوم بإدخال نوع التبرع و سيتواصل معك مسؤولي المعرض ",
                        style: TextStyle(fontSize: 15, color: AppColor.black),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      DropdownSearch<String>(
                        popupProps: const PopupProps.menu(
                          showSelectedItems: true,
                          showSearchBox: true,
                        ),
                        items: const [
                          "مستلزمات نسائِية",
                          "مستلزمات الأطفال",
                          "مستلزمات الرجالية",
                          "أدوات المنزلية",
                          "الآثاث"
                        ],
                        dropdownDecoratorProps: const DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                            labelText: "إختر نوع التبرع",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FloatingActionButton(
                        onPressed: () {},
                        child: const Text("إرسال"),
                        backgroundColor: AppColor.kPrimaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
