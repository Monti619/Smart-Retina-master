import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/routes.dart';
import '../widgets/DashboardCards.dart';
class SignUpAs extends StatelessWidget {
  const SignUpAs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double height =MediaQuery.of(context).size.height;
    double width =MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        primary: true,
        centerTitle: true,
        title: const Text("Signup As"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('assets/icon_app.png'),
            ),
             Padding(
              padding: EdgeInsets.all(height*.02),
              child: Text(
                'Signup As',
                style: TextStyle(
                  fontSize: 33,
                  color: Colors.pink,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                InkWell(onTap: onLoginPressed,child: DashboardCard(name: 'doctor', imgpath: 'assets/doctor.png')),
                InkWell(onTap: onLoginPressed,child: DashboardCard(name: 'Patient', imgpath: 'assets/patient.png')),
              ],
            ),
            Padding(
              padding:  EdgeInsets.all(height*.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Already have an acount?',
                    style: TextStyle(
//                      fontSize: 33,
                      color: Colors.pink,
                    ),
                  ),
                  TextButton(onPressed: onLoginPressed,
                    child: Text('Login now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  static void onLoginPressed() {
    Get.offNamed(Routes.loginScreen);
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../routes/routes.dart';
// import '../view/screens/auth/login_screen.dart';
// import '../view/screens/auth/signup_screen.dart';
// import '../widgets/DashboardCards.dart';
//
// class SignUpAs extends StatelessWidget {
//   const SignUpAs({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     double height =MediaQuery.of(context).size.height;
//     double width =MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         primary: true,
//         centerTitle: true,
//         title: const Text("Signup As"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Center(
//               child: Image.asset('assets/icon_app.png'),
//             ),
//              Padding(
//               padding: EdgeInsets.all(height*.02),
//               child: Text(
//                 'Signup As',
//                 style: TextStyle(
//                   fontSize: 33,
//                   color: Colors.pink,
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 InkWell(onTap: onLoginPressed,child: DashboardCard(name: 'doctor', imgpath: 'assets/doctor.png')),
//                 InkWell(onTap: onLoginPressedPatient,child: DashboardCard(name: 'Patient', imgpath: 'assets/patient.png')),
//               ],
//             ),
//             Padding(
//               padding:  EdgeInsets.all(height*.02),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children:  [
//                   Text(
//                     'Already have an acount?',
//                     style: TextStyle(
// //                      fontSize: 33,
//                       color: Colors.pink,
//                     ),
//                   ),
//                   TextButton(onPressed: onLoginPressed,
//                   child: Text('Login now'),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//    void onLoginPressed() {
//     LoginScreen.isDoctor=true;
//     Get.offNamed(Routes.loginScreen);
//     print('==============================');
//     print(LoginScreen.isDoctor);
//   }
//    void onLoginPressedPatient() {
//     LoginScreen.isDoctor=false;
//     Get.offNamed(Routes.loginScreen);
//     print('==============================');
//     print(LoginScreen.isDoctor);
//   }
// }
