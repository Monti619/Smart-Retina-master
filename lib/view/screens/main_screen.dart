import 'package:badges/badges.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart/logic/controllers/cart_controller.dart';
import 'package:smart/logic/controllers/main_controller.dart';
import 'package:smart/routes/routes.dart';

import 'package:smart/utils/theme.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.find<MainController>();
  final cartController = Get.find<CartController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() {
        return Scaffold(
          backgroundColor: context.theme.backgroundColor,
          /*  appBar: AppBar(
            elevation: 0,
            leading: Container(),/*
            actions: [
              Obx(
                () => Badge(
                  position: BadgePosition.topEnd(top: 0, end: 3),
                  animationDuration: const Duration(milliseconds: 300),
                  animationType: BadgeAnimationType.slide,
                  badgeContent: Text(
                    cartController.quantity().toString(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  child: IconButton(
                    onPressed: () {
                      Get.toNamed(Routes.cartScreen);
                    },
                    icon: Image.asset('assets/images/shop.png'),
                  ),
                ),
              ),
            ],*/
            backgroundColor: Get.isDarkMode ? darkGreyClr : mainColor,
            title: Text(controller.title[controller.currentIndex.value]),
            centerTitle: true,
          ),*/
          /*
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 1, top: 1),
            child: DotNavigationBar(
              margin: const EdgeInsets.only(left: 10, right: 10),
              currentIndex: controller.currentIndex.value,
              dotIndicatorColor:
                  Get.isDarkMode ? white : Color.fromARGB(255, 255, 236, 236),
              unselectedItemColor: Colors.black,
              backgroundColor:
                  Get.isDarkMode ? white : Color.fromARGB(255, 255, 236, 236),
              // enableFloatingNavBar: false,
              onTap: (index) {
                controller.currentIndex.value = index;
              },

              items: [
                /// Home
                DotNavigationBarItem(
                  icon: const Icon(Icons.home),
                  selectedColor: Colors.red,
                ),

                /// category
                DotNavigationBarItem(
                  icon: const Icon(Icons.category),
                  selectedColor: Colors.red,
                ),

                /// Likes

                DotNavigationBarItem(
                  icon: const Icon(Icons.favorite),
                  selectedColor: Colors.red,
                ),

                /// Profile
                DotNavigationBarItem(
                  icon: const Icon(Icons.person),
                  selectedColor: Colors.red,
                ),
              ],
            ),
          ),*/
          /*  bottomNavigationBar: ConvexAppBar(backgroundColor:
                  Get.isDarkMode ? darkGreyClr : mainColor,
          
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.category, title: 'persons'),
      TabItem(icon: Icons.person, title: 'about US'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    initialActiveIndex: 0,//optional, default as 0
     onTap: (index) {
                controller.currentIndex.value = index;
              },
  ),*/
          body: IndexedStack(
            index: controller.currentIndex.value,
            children: controller.tabs,
          ),
        );
      }),
    );
  }
}
