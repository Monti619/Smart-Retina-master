// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:smart/logic/controllers/auth_controller.dart';
// import 'package:smart/routes/routes.dart';
// import 'package:smart/utils/my_string.dart';
// import 'package:smart/utils/theme.dart';
// import 'package:smart/view/screens/auth/forgot_password_screen.dart';
// import 'package:smart/view/widgets/auth/auth_button.dart';
// import 'package:smart/view/widgets/auth/auth_text_from_field.dart';
// import 'package:smart/view/widgets/auth/container_under.dart';
// import 'package:smart/view/widgets/text_utils.dart';
//
// class LoginScreen extends StatelessWidget {
//   LoginScreen({Key? key}) : super(key: key);
//
//   final fromKey = GlobalKey<FormState>();
//
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//
//   final controller = Get.find<AuthController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: context.theme.backgroundColor,
//         appBar: AppBar(
//           backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
//           elevation: 0,
//           centerTitle: true,
//           title: Text(
//             ' Login ',
//             style: TextStyle(
//               fontSize: 27,
//               color: Get.isDarkMode ? pinkClr : bottom,
//             ),
//           ),
//         ),
//         /* appBar: AppBar(
//           backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
//           elevation: 0,
//           centerTitle: true,
//           title: Text(
//             '  ',
//             style: TextStyle(
//               fontWeight: FontWeight.w800,
//               fontSize: 30,
//               color: Get.isDarkMode ? pinkClr : mainColor,
//             ),
//           ),
//         ),*/
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Image.asset('assets/images/log.png'),
//               SizedBox(
//                 width: double.infinity,
//                 height: 600,
//                 /*  child: Padding(
//                   padding: const EdgeInsets.only(left: 25, right: 25, top: 40),*/
//                 child: Form(
//                   key: fromKey,
//                   child: Column(
//                     children: [
//                       Row(
//                         children: [
//                            SizedBox(
//                             width: 3,
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       const SizedBox(
//                         height: 0,
//                       ),
//                       AuthTextFromField(
//                         controller: emailController,
//                         obscureText: false,
//                         validator: (value) {
//                           if (!RegExp(validationEmail).hasMatch(value)) {
//                             return 'Invalid email';
//                           } else {
//                             return null;
//                           }
//                         },
//                         prefixIcon: Get.isDarkMode
//                             ? const Icon(
//                           Icons.email,
//                           color: mainColor,
//                           size: 30,
//                         )
//                             : Image.asset('assets/images/email.png'),
//                         suffixIcon: const Text(""),
//                         hintText: 'Email',
//                       ),
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       GetBuilder<AuthController>(
//                         builder: (_) {
//                           return AuthTextFromField(
//                             controller: passwordController,
//                             obscureText: controller.isVisibilty ? false : true,
//                             validator: (value) {
//                               if (value.toString().length < 6) {
//                                 return 'Password should be longer or equal to 6 characters';
//                               } else {
//                                 return null;
//                               }
//                             },
//                             prefixIcon: Get.isDarkMode
//                                 ? const Icon(
//                               Icons.lock,
//                               color: mainColor,
//                               size: 30,
//                             )
//                                 : Image.asset('assets/images/lock.png'),
//                             hintText: 'Password',
//                             suffixIcon: IconButton(
//                               onPressed: () {
//                                 controller.visibility();
//                               },
//                               icon: controller.isVisibilty
//                                   ? const Icon(
//                                 Icons.visibility_off,
//                                 color: Colors.black,
//                               )
//                                   : const Icon(
//                                 Icons.visibility,
//                                 color: Colors.black,
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                       Align(
//                         alignment: Alignment.centerRight,
//                         child: TextButton(
//                           onPressed: () {
//                             Get.toNamed(Routes.forgotPasswordScreen);
//                           },
//                           child: TextUtils(
//                             text: 'تذكر كلمة المرور ?',
//                             fontSize: 18,
//                             color: Get.isDarkMode ? Colors.white : Colors.black,
//                             underLine: TextDecoration.none,
//                             fontWeight: FontWeight.normal,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         height: 50,
//                       ),
//
//                       GetBuilder<AuthController>(builder: (_) {
//                         return AuthButton(
//                           onPressed: () {
//                             if (fromKey.currentState!.validate()) {
//                               String email = emailController.text.trim();
//                               String password = passwordController.text;
//
//                               controller.logInUsingFirebase(
//                                   email: email, password: password);
//                             }
//                           },
//                           text: "Login",
//                         );
//                       }),
//
//                       const SizedBox(
//                         height: 20,
//                       ),
//
//                       //New Buttom
//                       GetBuilder<AuthController>(
//                         builder: (_) {
//                           return AuthButton(
//                             onPressed: () {
//                               Get.offNamed(Routes.signUpScreen);
//                             },
//                             text: "Sing up",
//                           );
//                         },
//                       ),
//
//                       //End New Buttom
//
//                       const SizedBox(
//                         height: 20,
//                       ),
//                       TextUtils(
//                         fontSize: 20,
//                         fontWeight: FontWeight.w700,
//                         text: "او",
//                         color: Get.isDarkMode ? Colors.white : Colors.black,
//                         underLine: TextDecoration.none,
//                       ),
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           InkWell(
//                             onTap: () {
//                               controller.googleSinUpApp();
//                             },
//                             child: Image.asset(
//                               "assets/images/facebook.png",
//                             ),
//                           ),
//                           const SizedBox(
//                             width: 20,
//                           ),
//                           GetBuilder<AuthController>(builder: (_) {
//                             return InkWell(
//                               onTap: () {
//                                 controller.googleSinUpApp();
//                               },
//                               child: Image.asset(
//                                 "assets/images/google.png",
//                               ),
//                             );
//                           }),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//
//               /*    ContainerUnder(
//                 text: "Don't have an Account? ",
//                 textType: "Sign up",
//                 onPressed: () {
//                   Get.offNamed(Routes.signUpScreen);
//                 },
//               ),*/
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//===========================================================

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart/logic/controllers/auth_controller.dart';
import 'package:smart/modules/Home/HomePage.dart';
import 'package:smart/routes/routes.dart';
import 'package:smart/screens/pro_membership_screen.dart';
import 'package:smart/utils/my_string.dart';
import 'package:smart/utils/theme.dart';
import 'package:smart/view/screens/auth/forgot_password_screen.dart';
import 'package:smart/view/widgets/auth/auth_button.dart';
import 'package:smart/view/widgets/auth/auth_text_from_field.dart';
import 'package:smart/view/widgets/auth/container_under.dart';
import 'package:smart/view/widgets/text_utils.dart';

import '../../../screens/doctor_profile_from_pationet.dart';

class LoginScreen extends StatelessWidget {
  static bool isDoctor=true;
  LoginScreen({Key? key}) : super(key: key);

  final fromKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final controller = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        appBar: AppBar(
          backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            ' Login ',
            style: TextStyle(
              fontSize: 27,
              color: Get.isDarkMode ? pinkClr : bottom,
            ),
          ),
        ),
        /* appBar: AppBar(
          backgroundColor: Get.isDarkMode ? darkGreyClr : Colors.white,
          elevation: 0,
          centerTitle: true,
          title: Text(
            '  ',
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 30,
              color: Get.isDarkMode ? pinkClr : mainColor,
            ),
          ),
        ),*/
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/log.png'),
              SizedBox(
                width: double.infinity,
                height: 600,
                /*  child: Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25, top: 40),*/
                child: Form(
                  key: fromKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const SizedBox(
                            width: 3,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 0,
                      ),
                      AuthTextFromField(
                        controller: emailController,
                        obscureText: false,
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return 'Invalid email';
                          } else {
                            return null;
                          }
                        },
                        prefixIcon: Get.isDarkMode
                            ? const Icon(
                                Icons.email,
                                color: mainColor,
                                size: 30,
                              )
                            : Image.asset('assets/images/email.png'),
                        suffixIcon: const Text(""),
                        hintText: 'Email',
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFromField(
                            controller: passwordController,
                            obscureText: controller.isVisibilty ? false : true,
                            validator: (value) {
                              if (value.toString().length < 6) {
                                return 'Password should be longer or equal to 6 characters';
                              } else {
                                return null;
                              }
                            },
                            prefixIcon: Get.isDarkMode
                                ? const Icon(
                                    Icons.lock,
                                    color: mainColor,
                                    size: 30,
                                  )
                                : Image.asset('assets/images/lock.png'),
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.visibility();
                              },
                              icon: controller.isVisibilty
                                  ? const Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    )
                                  : const Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    ),
                            ),
                          );
                        },
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.forgotPasswordScreen);
                          },
                          child: TextUtils(
                            text: 'تذكر كلمة المرور ?',
                            fontSize: 18,
                            color: Get.isDarkMode ? Colors.white : Colors.black,
                            underLine: TextDecoration.none,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),

                      GetBuilder<AuthController>(builder: (_) {
                        return AuthButton(
                          onPressed: () {
                            if(LoginScreen.isDoctor){
                              print('==============================');
                              print(LoginScreen.isDoctor);
                              if (fromKey.currentState!.validate()) {
                                String email = emailController.text.trim();
                                String password = passwordController.text;

                                controller.logInUsingFirebase(
                                    email: email, password: password);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => HomeScreen()));
                              }
                              else
                                {
                                  print('==============================');
                                  print(LoginScreen.isDoctor);
                                  if (fromKey.currentState!.validate()) {
                                    String email = emailController.text.trim();
                                    String password = passwordController.text;

                                    controller.logInUsingFirebase(
                                        email: email, password: password);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => ProMembership()));

                                  }
                                }
                            }


                            if (fromKey.currentState!.validate()) {
                              String email = emailController.text.trim();
                              String password = passwordController.text;

                              controller.logInUsingFirebase(
                                  email: email, password: password);
                            }
                          },
                          text: "Login",
                        );
                      }),

                      const SizedBox(
                        height: 20,
                      ),

                      //New Buttom
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthButton(
                            onPressed: () {
                              Get.offNamed(Routes.signUpScreen);
                            },
                            text: "Sing up",
                          );
                        },
                      ),

                      //End New Buttom

                      const SizedBox(
                        height: 20,
                      ),
                      TextUtils(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        text: "او",
                        color: Get.isDarkMode ? Colors.white : Colors.black,
                        underLine: TextDecoration.none,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              controller.googleSinUpApp();
                            },
                            child: Image.asset(
                              "assets/images/facebook.png",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GetBuilder<AuthController>(builder: (_) {
                            return InkWell(
                              onTap: () {
                                controller.googleSinUpApp();
                              },
                              child: Image.asset(
                                "assets/images/google.png",
                              ),
                            );
                          }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              /*    ContainerUnder(
                text: "Don't have an Account? ",
                textType: "Sign up",
                onPressed: () {
                  Get.offNamed(Routes.signUpScreen);
                },
              ),*/
            ],
          ),
        ),
      ),
    );
  }
}
