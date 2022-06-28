/*import 'package:flutter/material.dart';
import 'package:smart/onboarding/page/onboarding_page.dart';
import 'package:smart/onboarding/widget/button_widget.dart';
import 'package:smart/routes/routes.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        /*appBar: AppBar(
          title: Text(MyApp.title),
        ),*/
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'HomePage',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 24),
              ButtonWidget(
                text: 'Go Back',
                onClicked: () => goToOnBoarding(context),
              ),
            ],
          ),
        ),
      );

  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => WelcomeScreen()),
      );
}
*/