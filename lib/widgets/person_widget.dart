// ignore_for_file: sized_box_for_whitespace, constant_identifier_names

import 'package:flutter/material.dart';

class PersonWidget extends StatelessWidget {
  final String name, title, img;
  final double rate;

  const PersonWidget({
    Key? key,
    required this.name,
    required this.title,
    required this.img,
    required this.rate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(0.0),
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      decoration: BoxDecoration(
          color: Theme.of(context).canvasColor,
          borderRadius: BorderRadius.circular(8.0),
          //border: Border.all(color: RegularTheme.blueGray),
          // ignore: prefer_const_literals_to_create_immutables
          boxShadow: [
            const BoxShadow(
                /*color: RegularTheme.blueGray,*/
                blurRadius: 0.5,
                spreadRadius: 0.5)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
//                color: RegularTheme.lightGrey,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    topRight: Radius.circular(8.0)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5.0,
                    vertical: 1.0,
                  ), // 5.0
                  child: Image.asset(
                    img,
                    fit: title.isEmpty ? BoxFit.fill : BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          title.isEmpty
              ? Flexible(
                  flex: 2,
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 10.0),
                      child: Text(
                        name,
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                )
              : Flexible(
                  flex: 2,
                  child: FittedBox(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 10.0, right: 10.0, bottom: 6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
//                        color: Colors.white,
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: TextStyle(
//                                backgroundColor: Colors.white,
                                color: Theme.of(context).primaryColor,
                                fontSize: 35,
//                              fontSize: Res.of(context, Res.normal),
                              ),
                            ),
                            Text(
                              title,
//                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              '$rate/5',
//                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}

const List doctors_data = [
  {
    'name': 'Dr/Mohamed',
    'title': 'discrption discrption discrption',
    'img': 'assets/profile_icon.png',
    'rate':4.8,
  },
  {
    'name': 'Dr/Ahmed fayz',
    'title': 'discrption discrption discrption',
    'img': 'assets/profile_icon.png',
    'rate':4.8,
  },
  {
    'name': 'Dr/Hany Mmdoh',
    'title': 'discrption discrption discrption',
    'img': 'assets/profile_icon.png',
    'rate':4.8,
  },
  {
    'name': 'Dr/Mohamed',
    'title': 'discrption discrption discrption',
    'img': 'assets/profile_icon.png',
    'rate':4.8,
  },
  {
    'name': 'Dr/Ahmed fayz',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr5.jpeg',
    'rate':4.8,
  },
  {
    'name': 'Dr/Hany Mmdoh',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr6.jpeg',
    'rate':4.8,
  },
  {
    'name': 'Dr/Mohamed',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr7.jpeg',
    'rate':4.8,
  },
  {
    'name': 'Dr/Ahmed fayz',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr8.jpeg',
    'rate':4.8,
  },
  {
    'name': 'Dr/Hany Mmdoh',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr9.jpeg',
    'rate':4.8,
  },
  {
    'name': 'Dr/Mohamed',
    'title': 'discrption discrption discrption',
    'img': 'assets/dr10.jpeg',
    'rate':4.8,
  },
];
