import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart/drawer/drawer_item.dart';
import 'package:smart/drawer/pages/My_Answers.dart';
import 'package:smart/drawer/pages/Notifcation.dart';
import 'package:smart/drawer/pages/Profile.dart';
import 'package:smart/logic/controllers/auth_controller.dart';
import 'package:smart/routes/routes.dart';
import 'package:smart/utils/theme.dart';
import 'package:smart/view/screens/home_screen.dart';
import 'package:smart/view/screens/settings_screen.dart';
import 'package:smart/view/widgets/setting/logout_widget.dart';
import 'package:smart/view/widgets/setting/profile_widget.dart';

import '../screens/NotificationScreen.dart';
import '../screens/doctor_profile_from_pationet.dart';
import '../screens/questions_screen.dart';

class NavigationDrawer extends StatelessWidget {
  NavigationDrawer({Key? key}) : super(key: key);
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: bottom,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
          child: Column(
            children: [
              ProfileWidget(),
              //headerWidget(),
              const SizedBox(
                height: 40,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 40,
              ),
              DrawerItem(
                name: 'Home',
                icon: Icons.home,
                onPressed: () => Scaffold.of(context).openDrawer(),
                /*Get.offNamed(Routes.HomeScreen),*/
              ),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Notifcation',
                  icon: Icons.notifications,
                  onPressed: () => onItemPressed(context, index: 0)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'Profile',
                  icon: Icons.person,
                  onPressed: () => onItemPressed(context, index: 1)),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                  name: 'My Answers',
                  icon: Icons.message_outlined,
                  onPressed: () => onItemPressed(context, index: 2)),
              const SizedBox(
                height: 30,
              ),
              const Divider(
                thickness: 1,
                height: 10,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 30,
              ),
              //LogOutWidget(),
              DrawerItem(
                  name: 'Sign out',
                  icon: Icons.logout,
                  onPressed: () => Get.defaultDialog(
                        title: "Logout From App",
                        titleStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        middleText: 'Are you sure you need to logout',
                        middleTextStyle: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.grey,
                        radius: 10,
                        textCancel: " No ",
                        cancelTextColor: Colors.white,
                        textConfirm: " YES ",
                        confirmTextColor: Colors.white,
                        onCancel: () {
                          Get.back();
                        },
                        onConfirm: () {
                          controller.signOutFromApp();
                        },
                        buttonColor: Get.isDarkMode ? pinkClr : mainColor,
                      )),
              const SizedBox(
                height: 30,
              ),
              DrawerItem(
                name: 'Setting',
                icon: Icons.settings,
                onPressed: () => Get.offNamed(Routes.SettingsScreen),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onItemPressed(BuildContext context, {required int index}) {
    Navigator.pop(context);

    switch (index) {
      case 0:
        NotificationScreen.isEmpty = false;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NotificationScreen()));
        break;
    }
    switch (index) {
      case 1:
        Navigator.pushNamed(context, Routes.DoctorProfileFromPatientPage);
//        Get.offNamed(Routes.DoctorProfileFromPatientPage);
//        Navigator.push(
//            context, MaterialPageRoute(builder: (context) => DoctorProfileFromPatientPage()));
        break;
    }
    switch (index) {
      case 2:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const QuestionsScreen()));
    }
  }

  Widget headerWidget() {
    const url = '';
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(url),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('Person name',
                style: TextStyle(fontSize: 14, color: Colors.white)),
            SizedBox(
              height: 10,
            ),
            Text('person@email.com',
                style: TextStyle(fontSize: 14, color: Colors.white))
          ],
        )
      ],
    );
  }
}
