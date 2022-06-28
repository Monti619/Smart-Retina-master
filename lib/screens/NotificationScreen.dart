// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/notification_item.dart';

class NotificationScreen extends StatelessWidget {
  static bool isEmpty =false;

  const NotificationScreen({Key? key/*, required this.isEmpty*/}) : super(key: key);

//  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: true, centerTitle: true, title: const Text("Notifications")),
      body: isEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/icon_app.png'),
                ),
                const Text(
                  'No Notification found,',
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.pink,
                  ),
                ),
                const Text(
                  'can\'t see any',
                  style: TextStyle(
                    fontSize: 33,
                    color: Colors.pink,
                  ),
                ),
              ],
            )
          : ListView(
              children: <Widget>[
                const SizedBox(
                  height: 10,
                ),
                NotificationItem(
                  img: 'assets/profile.png',
                  notify: 'Kamilia Mohamed Liked your Qustion',
                  time: '1',
                  function: () {},
                ),
                NotificationItem(
                  img: 'assets/profile.png',
                  notify: 'Kamilia Mohamed Liked your Qustion',
                  time: '15',
                  function: () {},
                ),
                NotificationItem(
                  img: 'assets/profile.png',
                  notify: 'Kamilia Mohamed Liked your Qustion',
                  time: '31',
                  function: () {},
                ),
              ],
            ),
    );
  }
}
