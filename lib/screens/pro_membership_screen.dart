import 'package:flutter/material.dart';
import 'package:smart/screens/adding_question.dart';

import '../view/screens/payment_screen.dart';
import '../widgets/package_pro_membership.dart';
import '../widgets/question_smart_retina.dart';

class ProMembership extends StatelessWidget {
  const ProMembership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: true,
          centerTitle: true,
          title: const Text("Pro Membership")),
      body: Center(
        child: ListView(
          children: [
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset('assets/diamond.png'),
            ),
            const Center(
              child: Text(
                'Get access to detect more pictures',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.deepPurpleAccent,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Center(
                child: Text(
                  'Select a plan that is right for you.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.purple,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
            PackageProMembership(
              packageType: BG.month,
              packageTitle: '\$5/month',
              function: () {},
            ),
            PackageProMembership(
              packageType: BG.year,
              packageTitle: '\$45/year',
              function: () {},
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 25.0,),
            //   child: RaisedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => PayMentScreen()));
            //     },
            //     child: const Padding(
            //       padding: EdgeInsets.all(20.0),
            //       child: Text('Continue',
            //           style: TextStyle(
            //             fontSize: 18,
            //             color: Colors.white,
            //           )),
            //     ),
            //     color: Colors.deepPurpleAccent,
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
