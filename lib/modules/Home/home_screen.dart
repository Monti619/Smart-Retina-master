import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart/shared/components/components.dart';

import '../../routes/routes.dart';
import '../../screens/pro_membership_screen.dart';
import '../DoctorsAndCenters/TapBar.dart';
import '../diabetic retinopathy/Diabetic retinopathy.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: DefaultDrawer(HText: 'Nady'),
      appBar: DefaultAppBar(text: ''),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Container(
                width: 128,
                height: 131,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Home1.png'),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DiabeticRetinopathyScreen()));
                },
                child: Container(
                  width: 124,
                  height: 124,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Home2.png'),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TaPBarScreen()));
                },
                child: Container(
                  width: 124,
                  height: 124,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Home3.png'),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ProMembership()));
                  Get.offNamed(Routes.ProMembership);
                },
                child: Container(
                  width: 124,
                  height: 124,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Home4.png'),
                          fit: BoxFit.fill)),
                ),
              ),
              SizedBox(
                width: 30,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: 124,
                  height: 124,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                          image: AssetImage('assets/images/Home5.png'),
                          fit: BoxFit.fill)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_utils/src/extensions/context_extensions.dart';
// import 'package:smart/drawer/naviigation_drawer.dart';
// import 'package:smart/utils/theme.dart';
// import 'package:smart/view/widgets/text_utils.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: NavigationDrawer(),
//       appBar: AppBar(
//         title: Text(
//           ' Home ',
//           style: TextStyle(
//             fontSize: 27,
//             color: Get.isDarkMode ? pinkClr : white,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: bottom,
//       ),
//       body: Stack(
//         children: [
//           SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: Image.asset(
//               'assets/images/background2.png',
//               fit: BoxFit.cover,
//             ),
//           ),
//           Container(
//             child: Center(
//               child: ClipRRect(
//                 //borderRadius: BorderRadius.circular(100),
//                 child: Container(
//                   height: 330,
//                   width: 330,
//                   child: GridView.count(
//                     primary: false,
//                     padding: const EdgeInsets.all(0),
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     crossAxisCount: 2,
//                     children: [
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(100),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 18,
//                               vertical: 18,
//                             )),
//                         onPressed: () {},
//                         child: TextUtils(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           text: 'DIABETIC RETINIATHY',
//                           color: bottom,
//                           underLine: TextDecoration.none,
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(100),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 18,
//                               vertical: 18,
//                             )),
//                         onPressed: () {},
//                         child: TextUtils(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           text: 'DOCTORS',
//                           color: bottom,
//                           underLine: TextDecoration.none,
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(100),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 18,
//                               vertical: 18,
//                             )),
//                         onPressed: () {},
//                         child: TextUtils(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           text: 'Q&A',
//                           color: bottom,
//                           underLine: TextDecoration.none,
//                         ),
//                       ),
//                       ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                             primary: white,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(100),
//                             ),
//                             padding: const EdgeInsets.symmetric(
//                               horizontal: 18,
//                               vertical: 18,
//                             )),
//                         onPressed: () {},
//                         child: TextUtils(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                           text: 'DETECTION',
//                           color: bottom,
//                           underLine: TextDecoration.none,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
