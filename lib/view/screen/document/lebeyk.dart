import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class Lebeyk extends StatelessWidget {
  const Lebeyk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            centerTitle: true,
            backgroundColor: AppColor.kPrimaryLightColor,
            title: const Text(
              "لبيكَ كتابَ الله",
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
            child: Container(
              margin: const EdgeInsets.only(
                  top: 40, left: 20, right: 20, bottom: 20),
              child: Column(
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
                    "سعيا منها إلى خدمة كتاب الله تعالى ونشره ، ومواصلة لجهودها التي شملت إنشاء عشرات المحاظر في مختلف ولايات الوطن فقد سعت جمعية قلوب محسنة من خلال حملتها  المباركة *لبيك كتاب الله* إلى إنشاء صرح علمي وحضاري خاص بالقرآن .... ،سيحتضن المعهد مآت الدارسين التالين لكتاب الله تعالى ، وعشرات الأساتذة المختصين في تدريسه ونشر علومه .بدأ الإعداد لبناء المعهد بالداخل الموريتاني وسيكتمل ويفتتح في رمضان القادم 1444هجرية .وسيكون أحد أهم الصروح العلمية ومنارات الهدى ببلاد شنقيط .وكيف لا ؛ وهو معهد *لبيك كتاب الله* إنه فكرة إبداعية وسانحة تربوية بل وتوفيق من الله تعالى لجمعية قلوب محسنة .سعيا من الجمعية إلى الحضور الفاعل في حيازة أسهم الخيرية الموعود بها في الحديث الصحيح (خيركم من تعلم القرآن وعلمه...)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: "QuranSurah1-mLKO5",
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: AppColor.kPrimaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: const Text(
                        "تبرع من هنا ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "QuranSurah1-mLKO5",
                            fontSize: 20,
                            color: AppColor.backgroundcolor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
