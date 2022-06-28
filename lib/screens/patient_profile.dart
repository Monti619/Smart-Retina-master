// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class PatientProfilePage extends StatefulWidget {
//  final User user;
//  PatientProfilePage({Key key, this.user}) : super(key: key);

  @override
  _PatientProfilePageState createState() => _PatientProfilePageState();
}

class _PatientProfilePageState extends State<PatientProfilePage> {
  var date = DateTime.now();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          primary: true, centerTitle: true, title: const Text("Profile")),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Positioned(
                top: 66.0,
                left: (MediaQuery.of(context).size.width / 5 - 50.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    image: const DecorationImage(
                        image: AssetImage("assets/profile_icon.png"),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Mari Mohamed'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'felame',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '21 years',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 33,
          ),
      buildContainer(context, 'Diabetes runs in my family'),
      buildContainer(context, 'I do not suffer from diabetes'),
      buildContainer(context, 'currently, i am not pregnant'),
//          Container(
//            height: 80.0,
////            width: MediaQuery.of(context).size.width,
//            decoration: BoxDecoration(
//              color: Theme.of(context).primaryColor.withOpacity(.2),
//              borderRadius: BorderRadius.circular(20.0),
//              boxShadow: const [
//                BoxShadow(
//                  color: Colors.white,
//                  blurRadius: 2.0,
//                  offset: Offset(4.0, 4.0),
//                )
//              ],
//            ),
//            child: const Center(
//              child: Text('',
//                  style:
//                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
//            ),
//          ),
//          const Expanded(
//            child: Center(
//              child: Padding(
//                padding: EdgeInsets.all(8.0),
//                child: Text('I do not suffer from diabetes',
//                    style:
//                        TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
//              ),
//            ),
//          ),
//          const Expanded(
//            child: Center(
//              child: Padding(
//                padding: EdgeInsets.all(8.0),
//                child: Text(
//                  'currently, i am not pregnant',
//                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
//                ),
//              ),
//            ),
//          ),
        ],
      ),
    );
  }

  Widget buildContainer(BuildContext context, String textBody) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80.0,
//            width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 2.0,
              offset: Offset(4.0, 4.0),
            )
          ],
        ),
        child: Center(
          child: Text(
            textBody,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
        ),
      ),
    );
  }
}
