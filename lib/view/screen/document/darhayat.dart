import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class DarHaayat extends StatelessWidget {
  const DarHaayat({super.key});

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
              "دار الحياة تعتبر فكرة دار الحياة فكرة إبداعية تؤشر إلى حرص جمعية قلوب محسنة على تقديم الأكثر نفعا للمواطن الموريتاني بصفة عامة ومرضى السرطان بصفة خاصة ، فلا توجد دار خيرية مخصصة لإيواء مرضى السرطان  في البلاد إلا عند الجمعية فقط وهي دار في غاية الأهمية لأنها تعتبر مأوى وسكنا لمرضى السرطان الذين يأتون من القرى والأرياف للبحث عن العلاج ، فتوفر لهم الطعام والدواء ويرتاحون فيها مع ذويهم وأقاربهم ويقتربون من مكان علاجهم ، وقد احتضنت منذ إنشائها إلى اليوم ما يناهز سبعمائة مريض. ومنذ نشأة الدار عام 2016. وهي تؤوي المرضى شهريا مع ذويهم حتى يكتمل علاجهم توفر دار الحياة لنزلائها وجبات صحية كاملة ، وتكييفا متميزا وصحيا للغرف ، ويقوم عليها طاقم من عمال الجمعية يسهر على راحة الضيوف ويسعى لمصلحتهم الصحية والنفسية .فهي بحق بلسم شفاء ودار حياة ...",
              textAlign: TextAlign.center,
              style: TextStyle(
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
                      fontFamily: "QuranSurah1-mLKO5",
                      fontSize: 15,
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
