import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:smart/shared/components/components.dart';
import 'package:open_file/open_file.dart';

import '../Home/HomePage.dart';

class DoctorAccScreen extends StatefulWidget {
  const DoctorAccScreen({Key? key}) : super(key: key);

  @override
  State<DoctorAccScreen> createState() => _DoctorAccScreenState();
}

class _DoctorAccScreenState extends State<DoctorAccScreen> {
  String? fileName;
  PlatformFile? pickedFile;
  bool isLoadin = false;

  // File? fileToDisplay;
  FilePickerResult? result;

  void PickFile() async {
    try {
      result = await FilePicker.platform
          .pickFiles(type: FileType.any, allowMultiple: false);
      if (result != null) {
        fileName = result!.files.first.name;
        pickedFile = result!.files.first;

        // fileToDisplay =pickedFile!.path.toString() as File?;
        print('File name $fileName');
      }
    } catch (e) {
      print(e);
    }
  }

  void openFile(PlatformFile file) {
    OpenFile.open(file.path!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        text: 'SignUp',
        LeadingIcon: Icons.arrow_back,
        LFunction: () {Navigator.pop(context);},
      ),
      body: ListView(
        children: [
          Center(
            child: DefaultText(
                text: 'Complete your Account',
                family: 'Nexa',
                size: 20,
                cl: Color(0xff26D1Ef),
                weight: FontWeight.w900),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: 'Clinic\'s Location',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    color: Color(0xffCAC6C5),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: TextFormField(
              controller: TextEditingController(
                  text: result != null && result!.files.isNotEmpty
                      ? result!.files.first.path!
                          .substring(result!.files.first.path!.lastIndexOf('/'))
                      : null),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  suffixIcon: GestureDetector(
                    onTap: () {
                      PickFile();
                    },
                    child: Icon(
                      Icons.attach_file_outlined,
                      color: Color(0xff26D1Ef),
                    ),
                  ),
                  hintText: 'Idintification',
                  hintStyle: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Nexa-Trial-Light.ttf',
                    color: Color(0xffCAC6C5),
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30))),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                width: 200,
                height: 50,
                child: DefaultText(
                    text:
                        'By creating an account you agree to ourTerms of Service and Privacy Policy',
                    family: 'Nexa',
                    size: 10,
                    cl: Color(0xff83A0B6)),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30),
            child: DefaultButton(
                function: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                text: 'Create'),
          ),
        ],
      ),
    );
  }
}
