import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:smart/utils/theme.dart';
import 'package:smart/view/widgets/setting/profile_widget.dart';
import 'package:smart/view/widgets/text_utils.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: const EdgeInsets.all(24),
        children: [
          ProfileWidget(),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 20,
          ),
          TextUtils(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            text: "GENERAL",
            color: bottom,
            underLine: TextDecoration.none,
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
