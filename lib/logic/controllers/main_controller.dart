import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:smart/view/screens/favorites_screen.dart';
import 'package:smart/view/screens/home_screen.dart';
import 'package:smart/view/screens/settings_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  var tabs = [
    HomeScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  var title = [
    " إنذار بالخطف",
    " إنذار بالخطف",
    'عن التيم',
    "إعدادات",
  ].obs;
}
