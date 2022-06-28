// ignore_for_file: unused_local_variable, use_key_in_widget_constructors

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../shared/components/components.dart';

// enum BG {
//   month,
//   year,
// }

class AddingQuestion extends StatefulWidget {
//  final String packageTitle;
//  final BG packageType;
//
////  final int packageTitleNum;
//  final Function() function;
  static var load = false;

  @override
  State<AddingQuestion> createState() => _AddingQuestionState();
}

class _AddingQuestionState extends State<AddingQuestion> {
//  late Image img;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.3),
      appBar: DefaultAppBar(
        LFunction: () {
          Navigator.pop(context);
        },
        LeadingIcon: Icons.arrow_back,
        text: 'Questions',
        // AFunction: () {
        //   Scaffold.of(context).openEndDrawer();
        // },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8.0),
        child: InkWell(
          onTap: () {},
          child: ListView(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 25.0),
                  child: Center(
                    // ignore: dead_code
                    child: textFormField(
                        hint: 'Ask your question describe what you see',
                        errVal: 'can\'t be empty',
                        onClick: () {}),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.black45,
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 25.0,
                ),
                child: RaisedButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text('Post',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            )),
                      ),
                      Icon(Icons.send),
                    ],
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

  Widget textFormField({
    required hint,
    required errVal,
    required onClick,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
      ),
      child: SizedBox(
        height: 60,
        child: TextFormField(
          obscureText: hint == 'Enter your password' ? true : false,
          validator: (value) {
            if (value!.isEmpty) {
              return errVal;
            }
          },
          cursorColor: Colors.white,
          decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            filled: true,
//          fillColor: KSecondaryColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.deepOrange),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.deepOrange),
            ),
          ),
          onSaved: onClick(),
        ),
      ),
    );
  }
}
