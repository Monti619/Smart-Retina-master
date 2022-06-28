// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../widgets/notification_item.dart';

class DoctorProfileFromPatientPage extends StatelessWidget {
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: ListView(
        children: <Widget>[
//          NotificationItem(
//            img: 'assets/profile.png',
//            notify: 'foo',
//            time: '1',
//            function: () {},
//          ),
          const SizedBox(
            height: 20,
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
                      child: Text('Dr.Magdy Ali'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Ophthalmologist',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'B abd elmonem Riad St 4th flour Mansoura',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '01234567898 - 01023456789',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '4/5',
                  style: TextStyle(color: Colors.orangeAccent),
                ),
                Icon(Icons.star, color: Colors.orangeAccent),
                Icon(Icons.star, color: Colors.orangeAccent),
                Icon(Icons.star, color: Colors.orangeAccent),
                Icon(Icons.star, color: Colors.orangeAccent),
                Icon(Icons.star_border, color: Colors.orangeAccent),
              ],
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('LOCATION',
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0)),
            ),
          ),
          Center(
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .4,
                    child: Image.asset('assets/map.png')),
              ),
            ),
          ),
//          Center(
//              child: Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: SizedBox(
//                width: MediaQuery.of(context).size.width * .8,
//                height: MediaQuery.of(context).size.height*.4,
//                child: Image.asset('assets/certification.jpg')),
//          )),
//          Center(
//              child: Padding(
//            padding: const EdgeInsets.all(8.0),
//            child: SizedBox(
//                width: MediaQuery.of(context).size.width * .8,
//                height: MediaQuery.of(context).size.height*.4,
//                child: Image.asset('assets/certification.jpg')),
//          )),
        ],
      ),
    );
  }
}
