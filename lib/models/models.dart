import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FormModel {
  final String text;
  final TextInputType KeyboardType;

  FormModel({
    required this.text,
    required this.KeyboardType,
  });
}
//..............................................

class TileModel {
  final String TileName;
  final IconData TileIcon;

  TileModel({
    required this.TileName,
    required this.TileIcon,
  });
}

//..............................................

class SetModel {
  IconData? FIcon;
  String SetText;
  IconData? LIcon;
  bool isSwitch;
  Color? Icl;
  Color? Tcl;
  Color? Ccl;
  SetModel({
    this.Tcl,
    required this.Ccl,
    this.LIcon,
    this.Icl,
    this.FIcon,
    required this.SetText,
    required this.isSwitch,

  });
}

//..............................................


class DocModel {
  AssetImage? image;
  String name;
  String address;
  String stars;

  DocModel({
    this.image,
    required this.name,
    required this.address,
    required this.stars,
  });
}
//..............................................

class CentModel {
  AssetImage? image;
  String name;
  String address;
  String stars;

  CentModel({
    this.image,
    required this.name,
    required this.address,
    required this.stars,
  });
}
