import 'package:cografya/data/constants.dart';
import 'package:cografya/data/forcetype.dart';
import 'package:cografya/data/subbranch.dart';
import 'package:cografya/screens/forcetypepage.dart';
import 'package:cografya/screens/subbranchscreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tools {
  static List<Widget> returnForceTypeWidgets(
      {required BuildContext context, required List<ForceType> forcetypes}) {
    List<Widget> list = [];
    for (ForceType i in forcetypes) {
      list.add(GestureDetector(
        onTap: () {
          Navigator.of(context).push(CupertinoPageRoute(
              builder: (context) => ForceTypePage(forcetype: i)));
        },
        child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/${i.imageName}"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 3, color: Colors.transparent),
                borderRadius: BorderRadius.circular(50)),
            height: 400.h,
            width: 700.h,
            child: Center(
                child: Text(
              i.name,
              style: TextStyle(color: Colors.white, fontSize: 30),
            ))),
      ));
    }
    return list;
  }

  static List<Widget> returnForceTypePage(
      {required BuildContext context, required ForceType forceType}) {
    List<Widget> list = [
      Center(
          child: Text(
        forceType.name,
        style: TextStyle(
          fontSize: 40,
          color: Constants.mainColor,
        ),
      )),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/${forceType.imageName}"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 3, color: Colors.transparent),
                borderRadius: BorderRadius.circular(50)),
            height: 500.h,
            width: 800.w,
          ),
        ),
      ),
      Center(
        child: SizedBox(
          width: 900.w,
          child: Text(
            forceType.shortDescription,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      )
    ];
    for (SubBranch i in forceType.subbranchs) {
      list.add(Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(CupertinoPageRoute(builder: (context)=>SubBranchPage(subBranch: i)));
            },
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/${i.imageName}"),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(width: 3, color: Colors.transparent),
                    borderRadius: BorderRadius.circular(50)),
                height: 400.h,
                width: 700.w,
                child: Center(
                    child: Text(
                  i.name,
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ))),
          ),
        ),
      ));
    }
    return list;
  }
  static returnSubBranchPage({required BuildContext context,required SubBranch subbranch}){
    List<Widget> list = [
      Center(
          child: Text(
        subbranch.name,
        style: TextStyle(
          fontSize: 40,
          color: Constants.mainColor,
        ),
      )),
      Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/${subbranch.imageName}"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(width: 3, color: Colors.transparent),
                borderRadius: BorderRadius.circular(50)),
            height: 500.h,
            width: 800.w,
          ),
        ),
      ),
      Center(
        child: SizedBox(
          width: 900.w,
          child: Text(
            subbranch.description,
            style: TextStyle(
              fontSize: 17,
            ),
          ),
        ),
      )
    ];
  return list;

}
}