import 'package:cografya/data/forcetype.dart';
import 'package:cografya/data/subbranch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

class Constants {
  static const Color mainColor = Colors.green;
  static Drawer drawer = Drawer(
    width: 500.w,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Image.asset(
              "assets/images/drawer/buymeacoffee.png",
              width: 300.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            onTap: () async {
              const url = "https://buymeacoffee.com/developer86";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Image.asset(
              "assets/images/drawer/github.png",
              width: 300.w,
              height: 100.h,
              fit: BoxFit.fill,
            ),
            onTap: () async {
              const url = "https://github.com/outterstellar/deutschQuestions";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: GestureDetector(
            child: Container(
              width: 300.w,
              height: 100.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).w,
                  border: Border.all(width: 2.w, color: Constants.mainColor)),
              child: Center(
                  child: Text(
                "More On My Website",
                style: TextStyle(color: Constants.mainColor, fontSize: 20.sp),
              )),
            ),
            onTap: () async {
              const url = "https://dogacevcin.com";
              if (await canLaunchUrl(Uri.parse(url))) {
                await launchUrl(Uri.parse(url));
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            "Developer : Doğaç Evcin",
            style: TextStyle(color: Constants.mainColor),
          ),
        )
      ],
    ),
  );
  static List<ForceType> forcetypes = [
    ForceType(
        name: "İç Kuvvetler",
        shortDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.",
        imageName: "ickuvvetler.jpg",
        subbranchs: [
          SubBranch(name: "Orojenez", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.", imageName: "orojenez.jpg"),
          SubBranch(name: "Epirojenez", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.", imageName: "epirojenez.jpg"),
          SubBranch(name: "Volkanizma", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.", imageName: "volkanizma.jpg"),
          SubBranch(name: "Deprem", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.", imageName: "deprem.jpg")
        ]),
    ForceType(
        name: "Dış Kuvvetler",
        shortDescription:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut laoreet, magna id pulvinar efficitur, ex arcu mattis sem, id hendrerit augue ante at ligula. Nunc urna lacus, imperdiet non lacus ac, convallis eleifend leo. Phasellus sed luctus dolor, ac finibus tortor. Donec sed commodo lacus. Quisque felis justo, iaculis sit amet pellentesque non, pretium eget massa. Mauris maximus porta luctus. Etiam et lacus et diam sagittis varius. Duis dictum eros id turpis rutrum, ac maximus leo blandit. Maecenas cursus id velit sagittis dignissim. Nam vitae odio metus. Donec vitae vehicula arcu. Etiam vitae nibh auctor, fringilla tellus vel, commodo neque.",
        imageName: "diskuvvetler.jpeg",
        subbranchs: []),
  ];
}
