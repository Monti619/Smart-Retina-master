import 'package:flutter/material.dart';
import 'package:smart/modules/DoctorsAndCenters/TapBar.dart';
import '../../shared/components/components.dart';

class ThirdStageScreen extends StatelessWidget {
  const ThirdStageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: DefaultDrawer(HText: 'Mohsen'),
      backgroundColor: Colors.white,
      appBar: AppBar(
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
                    image: AssetImage('assets/images/eye2.png'),
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
              'Proliferative Stage',
              style: TextStyle(
                color: Color(0xff002440),
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
              'You are in the fourth stage, the matter is very dangerous, you must visit a doctor sooner rather than later',
              style: TextStyle(
                color: Color(0xffF9618C),
                fontFamily: 'Nexa',
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            DefaultButton(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TaPBarScreen()));
                },
                text: 'Show Doctors ',
                height: 48,
                width: 116),
          ],
        ),
      ),
    );
  }
}
