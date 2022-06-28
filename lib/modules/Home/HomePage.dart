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
