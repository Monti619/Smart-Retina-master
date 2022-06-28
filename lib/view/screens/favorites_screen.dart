import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart/logic/controllers/product_controller.dart';

class FavoritesScreen extends StatelessWidget {
  FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: Stack(children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/about.png',
              fit: BoxFit.cover,
            ),
          ),
        ]));
  }
}
