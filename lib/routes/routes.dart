import 'package:get/get.dart';
import 'package:smart/logic/bindings/auth_biniding.dart';
import 'package:smart/logic/bindings/main_binding.dart';
import 'package:smart/logic/bindings/product_binding.dart';
import 'package:smart/logic/controllers/product_controller.dart';
import 'package:smart/onboarding/page/onboarding_page.dart';
import 'package:smart/view/screens/auth/forgot_password_screen.dart';
import 'package:smart/view/screens/auth/login_screen.dart';
import 'package:smart/view/screens/auth/signup_screen.dart';
import 'package:smart/view/screens/cart_screen.dart';
import 'package:smart/view/screens/home_screen.dart';
import 'package:smart/view/screens/main_screen.dart';
import 'package:smart/view/screens/payment_screen.dart';
import 'package:smart/view/screens/settings_screen.dart';

import '../screens/adding_question.dart';
import '../screens/doctor_profile_from_pationet.dart';
import '../screens/pro_membership_screen.dart';
import '../screens/questions_screen.dart';
import '../screens/signup_as.dart';
import '../screens/upload_image.dart';


class AppRoutes {
  //initialRoute

  static const welcome = Routes.welcomeScreen;
  static const mainSreen = Routes.mainScreen;
  //getPages

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => MainScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.cartScreen,
      page: () => CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.paymentScreen,
      page: () => PayMentScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
        MainBininding(),
      ],
    ),
    GetPage(
      name: Routes.SettingsScreen,
      page: () => const SettingsScreen(),
    ),
    GetPage(
      name: Routes.HomeScreen,
      page: () => const HomeScreen(),
    ),
    GetPage(
      name: Routes.SignUpAs,
      page: () => const SignUpAs(),
    ),
    GetPage(
      name: Routes.QuestionsScreen,
      page: () => const QuestionsScreen(),
    ),
    GetPage(
      name: Routes.AddingQuestion,
      page: () => AddingQuestion(),
    ),
    GetPage(
      name: Routes.UploadImage,
      page: () => UploadImage(),
    ),
    GetPage(
      name: Routes.DoctorProfileFromPatientPage,
      page: () => DoctorProfileFromPatientPage(),
    ),
    GetPage(
      name: Routes.ProMembership,
      page: () => ProMembership(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
  static const MyHomePage = '/MyHomePage';
  static const SettingsScreen = '/SettingsScreen';
  static const HomeScreen = '/HomeScreen';
  static const SignUpAs = '/SignUpAs';
  static const QuestionsScreen = '/category_meals';
  static const AddingQuestion = '/AddingQuestion';
  static const UploadImage = '/UploadImage';
  static const DoctorProfileFromPatientPage = '/DoctorProfileFromPatientPage';
  static const ProMembership = '/ProMembership';
}
