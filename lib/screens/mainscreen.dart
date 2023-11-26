import 'package:cografya/data/constants.dart';
import 'package:cografya/data/tools.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Coğrafi Yer Şekilleri",
          style: TextStyle(color: Constants.mainColor,fontSize: 30),   
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Constants.mainColor
      ),
      endDrawer: Constants.drawer,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: Tools.returnForceTypeWidgets(context: context, forcetypes: Constants.forcetypes),
          ),
        ),
      ),
    );
  }
}
