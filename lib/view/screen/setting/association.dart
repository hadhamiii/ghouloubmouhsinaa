import 'package:flutter/material.dart';
import 'package:ghouloubmouhsina/core/constant/color.dart';
import 'package:ghouloubmouhsina/core/constant/imageasset.dart';

class Association extends StatelessWidget {
  const Association({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroudlightcolor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            centerTitle: true,
            title: const Text(
              "عن قلوب محسنة",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColor.backgroundcolor),
            ),
            backgroundColor: AppColor.kPrimaryColor,
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.all(15),
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.backgroundcolor),
                  child: const Text(
                    "تأسست جمعية قلوب محسنة في عام 2014 من قبل مجموعة من النساء الموريتانيات الملتزمات بمساعدة المحتاجين. منذ إنشائها، أثبتت نفسها كواحدة من أكبر المنظمات غير الربحية في موريتانيا. في عام 2015، حصلت الجمعية على اعتماد الدولة، وبالتالي تعزيز شرعيتها والاعتراف الرسمي",
                    style: TextStyle(
                        color: AppColor.black, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Text(
                  ":فروعنا",
                  style: TextStyle(
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                Container(
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.all(15),
                    height: 300,
                    width: 500,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 255, 255, 255)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(ImageAsset.nouakchott,
                                width: 150, height: 120, fit: BoxFit.fill),
                            const Spacer(),
                            Image.asset(ImageAsset.nouadhibou,
                                width: 150, height: 120, fit: BoxFit.fill)
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              ImageAsset.atar,
                              width: 150,
                              height: 120,
                              fit: BoxFit.fill,
                            ),
                            const Spacer(),
                            Image.asset(ImageAsset.zoueiratt,
                                width: 150, height: 120, fit: BoxFit.fill)
                          ],
                        )
                      ],
                    )),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
