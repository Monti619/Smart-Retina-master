import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:smart/language/localiztion.dart';
import 'package:smart/logic/controllers/theme_controller.dart';
import 'package:smart/routes/routes.dart';
import 'package:smart/utils/my_string.dart';
import 'package:smart/utils/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await GetStorage.init();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: '   ',
      debugShowCheckedModeBanner: false,
      locale: Locale(GetStorage().read<String>('lang').toString()),
      translations: LocaliztionApp(),
      fallbackLocale: Locale(ene),
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeController().themeDataGet,
      initialRoute: FirebaseAuth.instance.currentUser != null ||
              GetStorage().read<bool>('auth') == true
          ? AppRoutes.mainSreen
          : AppRoutes.welcome,
      getPages: AppRoutes.routes,
    );
  }
}

// import 'package:flutter/material.dart';
//
// import 'modules/DoctorAcc/SignUp.dart';
// import 'modules/DoctorsAndCenters/Centers.dart';
// import 'modules/DoctorsAndCenters/Doctors.dart';
// import 'modules/DoctorsAndCenters/TapBar.dart';
// import 'modules/Home/HomePage.dart';
// import 'modules/Settings/Setting_light.dart';
// import 'modules/add_new/add_new.dart';
// import 'modules/diabetic retinopathy/Diabetic retinopathy.dart';
// import 'modules/editProfile/editProfileDoctor.dart';
// import 'modules/editProfile/editProfileUser.dart';
// import 'modules/stages/first_stage.dart';
// import 'modules/stages/third_stage.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       // theme: ThemeData.dark(),
//       debugShowCheckedModeBanner: false,
//       home: HomeScreen(),
//     );
//   }
// }

