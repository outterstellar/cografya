import 'package:cografya/data/subbranch.dart';

class ForceType {
  String name;
  String shortDescription;
  String imageName;
  List<SubBranch> subbranchs;
  ForceType(
      {required this.name,
      required this.shortDescription,
      required this.imageName,
      required this.subbranchs});
}
