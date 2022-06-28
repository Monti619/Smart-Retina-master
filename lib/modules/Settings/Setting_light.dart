import 'package:flutter/material.dart';
import 'package:smart/screens/pro_membership_screen.dart';
import 'package:smart/shared/components/components.dart';

import '../add_new/add_new.dart';
import '../editProfile/editProfileDoctor.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        endDrawer: DefaultDrawer(HText: 'Mohammed'),
        appBar: DefaultAppBar(
            text: 'Settings', LFunction: () {Navigator.pop(context);}, LeadingIcon: Icons.arrow_back),
        body: Container(
          width: double.infinity,
          child: ListView(
            children: [
              SetBuilder(
                Iset: set[0],
                Sfunction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProMembership()));
                },
              ),
              SetBuilder(
                Iset: set[1],
                Sfunction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EditProfileDoctorScreen()));
                },
              ),
              SetBuilder(
                Iset: set[2],
                Sfunction: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text('Change Email'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: [
                                  TextFormField(
                                    maxLines: 1,
                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintText: 'New E-Mail',
                                        hintStyle: TextStyle(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  TextFormField(
                                    obscureText: true,
                                    maxLines: 1,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: 'New Password',
                                        hintStyle: TextStyle(),
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(15))),
                                  ),
                                ],
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('Cancel'),
                              ),
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text('OK'),
                              ),
                            ],
                          ));
                },
              ),
              SetBuilder(
                Iset: set[3],
                Sfunction: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => AddNewScreen()));
                },
              ),
              SetBuilder(
                Iset: set[5],
              ),
              SetBuilder(
                Iset: set[6],
              ),
              SetBuilder(
                Iset: set[7],
                Sfunction: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            content:
                            Text(
                              'ARE YOU SURE YOU WANT TO DELETE YOUR ACCOUNT?THIS STEP CANNOT BE UNDONE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff002440), fontSize: 16,fontWeight: FontWeight.w900),
                            ),
                        actions: <Widget>[
                          FlatButton(

                            onPressed: () => Navigator.pop(context),
                            child: Text('Cancel',style: TextStyle(color: Colors.white)),
                            color: Color(0xff26D1EF),
                            shape: StadiumBorder(),

                          ),
                          
                          FlatButton(
                            onPressed: () => Navigator.pop(context),
                            child: Text('DELETE',style: TextStyle(color: Color(0xffFF0F53)),),
                            color: Color(0xffFEE6ED),
                            shape: StadiumBorder(),
                          ),
                        ],

                          )
                  );
                },
              ),
            ],
          ),
        ));
  }
}
