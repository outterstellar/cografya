import 'package:cografya/data/constants.dart';
import 'package:cografya/data/subbranch.dart';
import 'package:cografya/data/tools.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SubBranchPage extends StatefulWidget {
  SubBranch subBranch;
  SubBranchPage({required this.subBranch,super.key});

  @override
  State<SubBranchPage> createState() => _SubBranchPageState();
}

class _SubBranchPageState extends State<SubBranchPage> {
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
        children: Tools.returnSubBranchPage(context:context,subbranch: widget.subBranch),
      ),
    );
  }
}