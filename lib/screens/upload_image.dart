// ignore_for_file: unused_local_variable, use_key_in_widget_constructors

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:smart/shared/components/components.dart';

enum BG {
  month,
  year,
}

class UploadImage extends StatefulWidget {
//  final String packageTitle;
//  final BG packageType;
//
////  final int packageTitleNum;
//  final Function() function;
  static var load = false;

  @override
  State<UploadImage> createState() => _UploadImageState();
}

class _UploadImageState extends State<UploadImage> {
  late Image img;

////    required this.packageTitle,
////    required this.packageType,
////    required this.function,
//  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      DefaultAppBar(
        LFunction: () {
          Navigator.pop(context);
        },
        LeadingIcon: Icons.arrow_back,
        text: 'Smart Retina',
        // AFunction: () {
        //   Scaffold.of(context).openEndDrawer();
        // },
      ),
      // AppBar(
      //   primary: true,
      //   centerTitle: true,
      //   title: const Text("Pro Membership"),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8.0),
        child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 400.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Center(
                    // ignore: dead_code
                    child: UploadImage.load
                        ? img
                        : const Text(
                            'Retina Image',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20.0),
//            boxShadow: const [
//              BoxShadow(
//                color: Colors.white,
//                blurRadius: 2.0,
//                offset: Offset(4.0, 4.0),
//              )
//            ],
                ),
              ),
//              Positioned(
//                bottom: 0.5,
//                left: 0.5,
//                right: 0.5,
//                child: Container(
//                  height: 160.0,
////                width: MediaQuery.of(context).size.width * .9,
//                  decoration: BoxDecoration(
//                    color: Colors.white.withOpacity(0.99),
//                    borderRadius: BorderRadius.circular(20.0),
//                  ),
//                  child: Column(
//                    children: const [
//                      Padding(
//                        padding: EdgeInsets.all(15.0),
//                        child: Center(
//                          child: Text(
//                            'Retina Image',
//                            style: TextStyle(
//                              fontSize: 30,
//                              color: Colors.deepPurple,
//                              fontWeight: FontWeight.w900,
//                            ),
//                          ),
//                        ),
//                      ),
////                      Center(
////                        child: Container(
////                          color: packageType == BG.month
////                              ? Colors.green.shade200
////                              : Colors.red.shade100,
////                          child: Padding(
////                            padding: const EdgeInsets.all(8.0),
////                            child: Text(
////                              packageType == BG.month
////                                  ? 'Most Popular'
////                                  : '+20 photos free',
////                              style: const TextStyle(
////                                fontSize: 16,
//////                            backgroundColor: Colors.greenAccent,
////                                color: Colors.deepPurple,
////                                fontWeight: FontWeight.w900,
////                              ),
////                            ),
////                          ),
////                        ),
////                      ),
////                      Padding(
////                        padding: const EdgeInsets.all(8.0),
////                        child: Column(
////                          children: [
////
////                            const Text(
////                              'The package alows you to',
////                              maxLines: 2,
////                              style: TextStyle(
////                                fontSize: 16,
//////                            backgroundColor: Colors.greenAccent,
////                                color: Colors.deepPurple,
////                                fontWeight: FontWeight.w900,
////                              ),
////                            ),
////                            Text(
////                              packageType == BG.month
////                                  ? 'detect up to 10 photo'
////                                  : 'detect up to 100 photo',
////                              maxLines: 2,
////                              style: const TextStyle(
////                                fontSize: 16,
//////                            backgroundColor: Colors.greenAccent,
////                                color: Colors.deepPurple,
////                                fontWeight: FontWeight.w900,
////                              ),
////                            ),
////                          ],
////                        ),
////                      ),
//                    ],
//                  ),
//                ),
//              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25.0,
                ),
                child: RaisedButton(
                  onPressed: uploadImage,
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text('upload',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        )),
                  ),
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> uploadImage() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path.toString());
      Image.asset('');
      setState(() {
        img = Image.file(file);
        UploadImage.load = true;
      });
    } else {
      // User canceled the picker
    }
  }
}
