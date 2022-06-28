import 'package:flutter/material.dart';

import '../../shared/components/components.dart';
class EditProfileUserScreen extends StatelessWidget {
  const EditProfileUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      endDrawer: DefaultDrawer(HText: 'Mari'),
      appBar: DefaultAppBar(
          LeadingIcon: Icons.arrow_back, LFunction: () {Navigator.pop(context);}, text: 'Profile'),
      body: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * .55,
                  height: 206,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xff707070), width: 1),
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(200),
                      image: DecorationImage(
                          image: AssetImage('assets/images/doc.png'),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: 0,
                  right: 2,
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.camera_alt_rounded,
                        size: 40,
                        color: Color(0xff26D1EF),
                      ),
                      alignment: Alignment.bottomRight),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                    width: 80,
                    child: DefaultText(
                        text: 'First Name',
                        family: 'Nexa',
                        size: 15,
                        cl: Color(0xff26D1EF))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 30),
                  child: TextFormField(
                    cursorHeight: 25,
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                    width: 80,
                    child: DefaultText(
                        text: 'Sur Name',
                        family: 'Nexa',
                        size: 15,
                        cl: Color(0xff26D1EF))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30),
                  child: TextFormField(
                    cursorHeight: 25,
                    maxLines: 1,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: SizedBox(
                    width: 80,
                    child: DefaultText(
                        text: 'Location',
                        family: 'Nexa',
                        size: 15,
                        cl: Color(0xff26D1EF))),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                  child: TextFormField(
                    cursorHeight: 25,
                    maxLines: 2,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintStyle: TextStyle(),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  ),
                ),
              ),
            ],
          ),


          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 80),
            child: DefaultButton(function: (){}, text: 'Update'),
          )
        ],
      ),
    );
  }
}
