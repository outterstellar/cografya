import 'package:cografya/data/constants.dart';
import 'package:cografya/data/forcetype.dart';
import 'package:cografya/data/tools.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForceTypePage extends StatefulWidget {
  ForceType forcetype;
  ForceTypePage({required this.forcetype, super.key});

  @override
  State<ForceTypePage> createState() => _ForceTypePageState();
}

class _ForceTypePageState extends State<ForceTypePage> {
  late ForceType forceType;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    forceType = widget.forcetype;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          "Coğrafi Yer Şekilleri",
          style: TextStyle(color: Constants.mainColor,fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Constants.mainColor,
      ),
      endDrawer: Constants.drawer,
      body: ListView(
        children: Tools.returnForceTypePage(context:context,forceType: forceType),
      ),
    );
  }
}
