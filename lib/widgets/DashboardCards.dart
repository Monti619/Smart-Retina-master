import 'package:flutter/material.dart';

class DashboardCard extends StatelessWidget {
  final String name;

  final String imgpath;

  const DashboardCard({Key? key, required this.name, required this.imgpath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.all(10),
      height: 160,
      width: 120,
      decoration: BoxDecoration(
//        border: Border.all(color: orangeColor),
        borderRadius: BorderRadius.circular(20),
//        color: ,
//        boxShadow: const [
//          BoxShadow(
//            color: Colors.black38,
//            offset: Offset(0, 2),
//            blurRadius: 7,
//          ),
//        ],
      ),
      child: Stack(
        children: [
          Image.asset(
            imgpath,
            width: 100,
            height: 100,
          ),
          Positioned(
            bottom: 2,
            right: 1,
            left: 12,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                name,
                style: const TextStyle(
//                color: KTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
