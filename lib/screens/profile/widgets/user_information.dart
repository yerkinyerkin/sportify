import 'package:flutter/material.dart';
import 'package:sportify/core/custom/app_text_style.dart';
import 'package:sportify/core/custom/height_spacer.dart';
import 'package:sportify/core/custom/reusable_text.dart';
import 'package:sportify/core/custom/utils/constants.dart';


class UserInformation extends StatelessWidget {
  const UserInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppConst.kLightPurple,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(27.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableText(
                  text: "Нұрдаулет",
                  style: appstyle(14, AppConst.kWhite, FontWeight.w700)),
              ReusableText(
                  text: "Өтегенов",
                  style: appstyle(24, AppConst.kWhite, FontWeight.w700)),
              const HeightSpacer(height: 15),
              ReusableText(
                  text: "Чемпионат Казахстана 2019 🥇",
                  style: appstyle(10, AppConst.kWhite, FontWeight.w700)),
              const HeightSpacer(height: 20),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReusableText(
                          text: "Жас:",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w700)),
                      ReusableText(
                          text: "06.07.2019 (11 жас)",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w400)),
                      const HeightSpacer(height: 10),
                      ReusableText(
                          text: "Клуб:",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w700)),
                      ReusableText(
                          text: "Хамза",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w400)),
                      const HeightSpacer(height: 10),
                      ReusableText(
                          text: "Тренер:",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w700)),
                      ReusableText(
                          text: "Андрей Андреев",
                          style: appstyle(
                              10, AppConst.kWhite, FontWeight.w400)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppConst.kGrey
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 7, 7,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ReusableText(text: "Мастер спорт үміткері", style: appstyle(10,AppConst.kWhite,FontWeight.w700))
            ],
          ),
        )
      ]),
    );
  }
}
