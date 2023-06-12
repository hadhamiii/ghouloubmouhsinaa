import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class MoujemaeSekeni extends StatelessWidget {
  const MoujemaeSekeni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Container(
        margin: const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
        child: ListView(
          children: [
            Image.asset(
              ImageAsset.lebeyk,
              width: 400,
              height: 400,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "الحي السكني ,عونا للفقراء وتحقيقا لنعم  الدفء والظل والسكن سعت جمعية قلوب محسنة إلى توفير مساكن للفقراء المتعففين الذين قصرت بهم جهودهم عن توفير ما يكن أفلاذ أكبادهم من القر ويظلهم من الحر ، فجاءت مبادرة تشييد *حي سكني* بإحدى أكثر مناطق البلاد كثافة وفقرا إنها منطقة مثلث الأمل ، حيث تسعى الجمعية إلى بناء وتشييد حي سكني يضم عشرات العوائل والأسر المعدمة لتتسلم كل أسرة وعلى طبق من إحسان المنفقين وبذل الساعين للخير بيتا ومطبخا وحماما وفق أحدث التصاميم العمرانية للسكن اللائق . وقد كانت هذه الفكرة الخدمية المميزة من نتائج حملات الشتاء التي دأبت الجمعية على تنظيمها فباتت على اطلاع واسع بأحوال مآت الأسر المعدمة التي هي بأمس الحاجة للسكن .",
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
    ;
  }
}
