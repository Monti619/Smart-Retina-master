// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import '../components/custom_text_field.dart';
import '../widgets/person_widget.dart';

class DoctorsScreen extends StatelessWidget {
  static const routeName = '/doctor_screen';

  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).canvasColor;
    return Scaffold(
//      backgroundColor: purpleColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: <Widget>[
              Container(
//                color: Colors.black12,
                width: 100,
                height: 100,
                padding: const EdgeInsetsDirectional.only(top: 20),
                child: Expanded(
                  child: Image.asset(
                    'assets/profile.png',
                    width: 134,
                    height: 134,
                  ),
                ),
              ),
            ],
          ),
             SizedBox(
               height: 100,
               child: Row(
                 children: [
                   Expanded(
                     child: CustomTextField(
                       hint: 'SEARCH',
                       icon: Icons.search,
                       errVal: 'errVal',
                       onClick: () {},
                     ),
                   ),
                   const Text('cach by'),
                   Expanded(
                     child: CustomTextField(
                       hint: '',
                       icon: Icons.search,
                       errVal: 'errVal',
                       onClick: () {},
                     ),
                   ),
                 ],
               ),
             ),
          Expanded(
            child: GridView(
              key: GlobalKey(),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: doctors_data
                  .map((doctor) => PersonWidget(
                        img: doctor['img'],
                        title: doctor['title'],
                        name: doctor['name'],
                        rate: doctor['rate'],
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
