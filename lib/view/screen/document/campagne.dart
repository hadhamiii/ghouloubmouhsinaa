import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class Campagne extends StatelessWidget {
  const Campagne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: ListView(
          children: [
            Image.asset(
              ImageAsset.hamle,
              width: 400,
              height: 400,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "تحت شعار {وَسَقَاهُمْ رَبُّهُمْ شَرَاباً طَهُوراً} توفر الجمعية الحملة الكبرى للسقاية ،تهدف الحملة لإنشاء بئر ارتوازي في مجمع القرى . بالاضافة الى قوافل غذائية يومية و توزيع صهاريج مياه يومية و إنشاء 100 حنفية للأسر الضعيفة (أيتام،مرضى) . للمشاركة في الحملة عبر الأسهم التالية :10.000-20.000 ، 50.000-100.000",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "QuranSurah1-mLKO5",
                  fontSize: 15,
                  color: AppColor.black),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColor.kPrimaryColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: InkWell(
                onTap: () {},
                child: const Text(
                  "تبرع من هنا ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "QuranSurah1-mLKO5",
                      fontSize: 20,
                      color: AppColor.backgroundcolor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
