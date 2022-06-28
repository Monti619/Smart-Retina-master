import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:smart/drawer/naviigation_drawer.dart';
import 'package:smart/utils/theme.dart';

class Notifcation extends StatelessWidget {
  const Notifcation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //drawer: NavigationDrawer(),
        appBar: AppBar(
          title: Text(
            ' Notifcation ',
            style: TextStyle(
              fontSize: 27,
              color: Get.isDarkMode ? pinkClr : white,
            ),
          ),
          centerTitle: true,
          backgroundColor: bottom,
        ),
        body: Stack(children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
        ]));
  }
}
