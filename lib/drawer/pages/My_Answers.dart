import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  const Answers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Answers'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
    );
  }
}
