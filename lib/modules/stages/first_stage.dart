import 'package:flutter/material.dart';
import 'package:smart/shared/components/components.dart';

class FirstStageScreen extends StatelessWidget {
  const FirstStageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;

    return
      Scaffold(
        endDrawer: DefaultDrawer(),
      backgroundColor: Colors.white,
      appBar:
      AppBar(
        iconTheme: IconThemeData(color: Color(0xff26D1EF)),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff26D1EF),
          ),
        ),

        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Smart Retina',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Nexa',
              fontSize: 14,
              color: Color(0xff26D1EF)),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              child: Container(
                height: ScreenHeight / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(49),
                  image: DecorationImage(
                    image: AssetImage('assets/images/eye1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                // child: Image(
                //   image: AssetImage('assets/images/eye2.png'),
                //   fit: BoxFit.fitWidth,
                // ),
              ),
            ),
            Text(
              'Moderate Stage',
              style: TextStyle(
                color: Color(0xff7600A8),
                fontFamily: 'Nexa-Trial-Heavy',
                fontSize: 30,
                letterSpacing: 5,
                textBaseline: TextBaseline.alphabetic,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'You are in the second stage, the matter is not very dangerous, but you have to be careful and follow some advices',
              style: TextStyle(
                color: Color(0xff83A0B6),
                fontFamily: 'Nexa',
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
                function: () {}, text: 'Show Advices ', height: 48, width: 116),
          ],
        ),
      ),
    );
  }
}

