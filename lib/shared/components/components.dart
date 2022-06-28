import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smart/models/models.dart';
import 'package:smart/view/widgets/setting/profile_widget.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../modules/Home/HomePage.dart';
import '../../modules/Settings/Setting_light.dart';
import '../../modules/editProfile/editProfileDoctor.dart';
import '../../screens/NotificationScreen.dart';
import '../../screens/doctor_profile.dart';
import '../../screens/questions_screen.dart';
import '../../utils/theme.dart';
import '../../view/widgets/setting/logout_widget.dart';


Widget DefaultButton({
  double height = 48,
  double width = 48,
  required Function() function,
  required String text,
}) =>
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Color(0xff26D1EF), borderRadius: BorderRadius.circular(24)),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Nexa',
              fontSize: 10,
              fontWeight: FontWeight.w900),
        ),
      ),
    );

//..............................................
//..............................................

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  Function()? LFunction;
  IconData? LeadingIcon;
  String? text;
  DefaultAppBar({
    Key? key,
    this.text,
    this.LeadingIcon,
    this.LFunction,
  });

  @override
  Size get preferredSize {
    return new Size.fromHeight(60);
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Color(0xff26D1Ef)),
      leading: IconButton(
        onPressed: LFunction,
        icon: Icon(
          LeadingIcon,
          color: Color(0xff26D1EF),
        ),
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
      title: Text(
        text!,
        style: TextStyle(
          fontWeight: FontWeight.w900,
          //fontFamily: 'Nexa',
          fontSize: 14,
          color: Color(0xff26D1EF),
        ),
      ),
      centerTitle: true,
    );
  }
}
//..............................................
//..............................................

Widget DefaultText({
  required String text,
  required String family,
  FontWeight? weight,
  required double size,
  required Color? cl,
}) =>
    Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: size,
        color: cl,
      ),
    );

//..............................................
//..............................................

// Widget DefaultDrawer({
//   final String? HText,
//
// }) {
//   return
//     Drawer(
//     elevation: 5,
//     backgroundColor: Color(0xff62B9ff),
//     child: ListView(
//         physics: NeverScrollableScrollPhysics(),
//         padding: EdgeInsets.zero,
//         children: [
//           Container(
//             width: double.infinity,
//             height: 150,
//             child: InkWell(
//               onTap: () {},
//               child: DrawerHeader(
//                   decoration: BoxDecoration(
//                       border: Border(
//                           bottom: BorderSide(width: 2, color: Colors.white))),
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundImage: AssetImage('assets/images/eye1.png'),
//                         radius: 35,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       DefaultText(
//                           text: HText!,
//                           family: 'Nexa',
//                           size: 18,
//                           cl: Colors.white,
//                           weight: FontWeight.w900)
//                     ],
//                   )),
//             ),
//           ),
//           ListView(
//             shrinkWrap: true,
//             children: [
//               TileBuilder(tiles[0],Tilefunction: (){
//                 // BuildContext? ctx;
//                 // Navigator.push(
//                 //     ctx!,
//                 //   MaterialPageRoute(
//                 //       builder: (context) => EditProfileDoctorScreen()));
//               }),
//               TileBuilder(tiles[1],Tilefunction: (){}),
//               TileBuilder(tiles[2],Tilefunction: (){}),
//               TileBuilder(tiles[3],Tilefunction: (){}),
//               TileBuilder(tiles[4],Tilefunction: (){}),
//               TileBuilder(tiles[5],Tilefunction: (){}),
//             ],
//           )
//         ]),
//   );
// }

class DefaultDrawer extends StatefulWidget {
  const DefaultDrawer({Key? key,this.HText}) : super(key: key);
  final String? HText;

  @override
  State<DefaultDrawer> createState() => _DefaultDrawerState();
}

class _DefaultDrawerState extends State<DefaultDrawer> {
  // get controller => null;
  final controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5,
      backgroundColor: Color(0xff62B9ff),
      child: ListView(
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          children: [
            Container(
              width: double.infinity,
              height: 150,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                  onTap: () {},
                  child: ProfileWidget(),
                  // DrawerHeader(
                  //     decoration: BoxDecoration(
                  //         border: Border(
                  //             bottom: BorderSide(width: 2, color: Colors.white))),
                  //     child: Row(
                  //       children: [
                  //         CircleAvatar(
                  //           backgroundImage: AssetImage('assets/images/eye1.png'),
                  //           radius: 35,
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         DefaultText(
                  //             text: widget.HText!,
                  //             family: 'Nexa',
                  //             size: 18,
                  //             cl: Colors.white,
                  //             weight: FontWeight.w900)
                  //       ],
                  //     )),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  leading: Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'Home',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'Notifications',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NotificationScreen()));
                  },
                  leading: Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'Profile',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuestionsScreen()));
                  },
                  leading: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'My Qestions',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
                ListTile(
                  onTap: () {
                    Get.defaultDialog(
                      title: "Logout From App",
                      titleStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      middleText: 'Are you sure you need to logout',
                      middleTextStyle: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.grey,
                      radius: 10,
                      textCancel: " No ",
                      cancelTextColor: Colors.white,
                      textConfirm: " YES ",
                      confirmTextColor: Colors.white,
                      onCancel: () {
                        Get.back();
                      },
                      onConfirm: () {
                        controller.signOutFromApp();
                      },
                      buttonColor: Get.isDarkMode ? pinkClr : mainColor,
                    );
                  },
                  leading: Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'SignOut',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SettingScreen()));
                  },
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.white,
                  ),
                  title: DefaultText(
                      text: 'Settings',
                      family: 'Nexa',
                      size: 13,
                      cl: Colors.white,
                      weight: FontWeight.w900),
                ),
              ],
            ),
          ]),
    );
  }
}



//..............................................
//..............................................

List<SetModel> set = [
  SetModel(
      LIcon: Icons.arrow_forward_ios_rounded,
      FIcon: Icons.diamond,
      SetText: 'Unlock PRO',
      isSwitch: false,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff9180FF)),
  SetModel(
      LIcon: Icons.arrow_forward_ios_rounded,
      FIcon: Icons.edit_rounded,
      SetText: 'Edit Profile',
      isSwitch: false,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff7FC4FE)),
  SetModel(
      LIcon: Icons.arrow_forward_ios_rounded,
      FIcon: Icons.mail_outline,
      SetText: 'Change Email',
      isSwitch: false,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff7FC4FE)),
  SetModel(
      LIcon: Icons.arrow_forward_ios_rounded,
      FIcon: Icons.payment,
      SetText: 'Add Payment Method',
      isSwitch: false,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff7FC4FE)),
  SetModel(
      FIcon: Icons.dark_mode_outlined,
      SetText: 'Dark Mode',
      isSwitch: true,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff7EC4FE)),
  SetModel(
      FIcon: Icons.notifications,
      SetText: 'Notifications',
      isSwitch: true,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff62B8FF)),
  SetModel(
      FIcon: Icons.location_on_rounded,
      SetText: 'Location',
      isSwitch: true,
      Ccl: Color(0xffE7EFF5),
      Tcl: Color(0xff008CFF),
      Icl: Color(0xff62B8FF)),
  SetModel(
      FIcon: Icons.not_interested,
      SetText: 'Delete Account',
      isSwitch: false,
      Icl: Color(0xffFF0F53),
      Ccl: Color(0x24F9618C),
      Tcl: Color(0xffFF0F53)),
];

class SetBuilder extends StatefulWidget {
  final SetModel Iset;
  final Function()? Sfunction;

  const SetBuilder({Key? key, required this.Iset, this.Sfunction})
      : super(key: key);

  @override
  State<SetBuilder> createState() => _SetBuilderState();
}

class _SetBuilderState extends State<SetBuilder> {
  bool Svalue = true;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: widget.Sfunction,
        child: Container(
          decoration: BoxDecoration(
              color: widget.Iset.Ccl, borderRadius: BorderRadius.circular(8)),
          padding: EdgeInsets.all(10),
          height: 56,
          //color: Color(0xffE7EFF5),

          child: Row(
            children: [
              Icon(
                widget.Iset.FIcon,
                size: 17,
                color: widget.Iset.Icl,
              ),
              SizedBox(
                width: 10,
              ),
              DefaultText(
                text: widget.Iset.SetText,
                family: 'Nexa',
                size: 18,
                cl: widget.Iset.Tcl,
                // weight: FontWeight.w900
              ),
              Spacer(),
              widget.Iset.isSwitch
                  ? Switch(
                      value: Svalue,
                      onChanged: (v) {
                        setState(() {
                          Svalue = v;
                        });
                      })
                  : Icon(
                      widget.Iset.LIcon,
                      size: 15,
                      color: Color(0xff008BFF),
                    )
            ],
          ),
        ),
      ),
    );
  }
}

//..............................................
//..............................................

List<DocModel> Doctors = [
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'mohammed',
      address: 'masr',
      stars: '28'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'mostafa',
      address: 'KSA',
      stars: '25'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'mohammed',
      address: 'mansoura',
      stars: '14'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'abdo',
      address: 'tabuk',
      stars: '28'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'khalid',
      address: 'KSA',
      stars: '55'),
  DocModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'khalid',
      address: 'USA',
      stars: '44'),
];

List<CentModel> Centers = [
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
  CentModel(
      image: AssetImage('assets/images/Home2.png'),
      name: 'salem',
      address: 'madina',
      stars: '28'),
];
class DoctorBuilder extends StatefulWidget {
  final DocModel idoc;
  const DoctorBuilder(DocModel doctor, {Key? key, required this.idoc}) : super(key: key);

  @override
  State<DoctorBuilder> createState() => _DoctorBuilderState();
}

class _DoctorBuilderState extends State<DoctorBuilder> {
  @override
  Widget build(BuildContext context) {
    return
        InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DoctorProfilePage()));
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Color(0xffE7EFF5),
            border: Border.all(color: Color(0xff83A0B6), width: 2),
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: widget.idoc.image,
              backgroundColor: Color(0x282A9FFF),
              radius: 35,
            ),
            Text(
              widget.idoc.name,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Nexa',
                color: Color(0xff008CFF),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.idoc.address,
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Nexa',
                color: Color(0xff83A0B6),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              widget.idoc.stars,
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Nexa',
                color: Color(0xffFFC200),
              ),
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}

// Widget DoctorBuilder(
//   DocModel idoc,
// ) =>
//     InkWell(
//       onTap: () {},
//       child: Container(
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//             color: Color(0xffE7EFF5),
//             border: Border.all(color: Color(0xff83A0B6), width: 2),
//             borderRadius: BorderRadius.circular(13)),
//         child: Column(
//           children: [
//             CircleAvatar(
//               backgroundImage: idoc.image,
//               backgroundColor: Color(0x282A9FFF),
//               radius: 35,
//             ),
//             Text(
//               idoc.name,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontFamily: 'Nexa',
//                 color: Color(0xff008CFF),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             Text(
//               idoc.address,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontFamily: 'Nexa',
//                 color: Color(0xff83A0B6),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//             Text(
//               idoc.stars,
//               style: TextStyle(
//                 fontSize: 22,
//                 fontFamily: 'Nexa',
//                 color: Color(0xffFFC200),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );
class CenterBuilder extends StatefulWidget {
  final CentModel icent;
  const CenterBuilder(CentModel center,  {Key? key, required this.icent}) : super(key: key);

  @override
  State<CenterBuilder> createState() => _CenterBuilderState();
}

class _CenterBuilderState extends State<CenterBuilder> {
  @override
  Widget build(BuildContext context) {
    return
      InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuestionsScreen()));
        },
        child: Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xffE7EFF5),
              border: Border.all(color: Color(0xff83A0B6), width: 2),
              borderRadius: BorderRadius.circular(13)),
          child: Column(
            children: [
              Container(
                width: 88,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    image: DecorationImage(
                        image: AssetImage('assets/images/Home4.png'))),
              ),

              Text(
                widget.icent.name,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nexa',
                  color: Color(0xff008CFF),
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              Text(
                widget.icent.address,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Nexa',
                  color: Color(0xff83A0B6),
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),

              Text(
                widget.icent.stars,
                style: TextStyle(
                  fontSize: 22,
                  fontFamily: 'Nexa',
                  color: Color(0xffFFC200),
                ),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      );
  }
}

// Widget CenterBuilder(
//   CentModel icent,
// ) =>
//     InkWell(
//       onTap: () {},
//       child: Container(
//         padding: EdgeInsets.all(5),
//         decoration: BoxDecoration(
//             color: Color(0xffE7EFF5),
//             border: Border.all(color: Color(0xff83A0B6), width: 2),
//             borderRadius: BorderRadius.circular(13)),
//         child: Column(
//           children: [
//             // CircleAvatar(
//             //   backgroundImage: icent.image,
//             //   radius: 35,
//             // ),
//             Container(
//               width: 88,
//               height: 80,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(19),
//                   image: DecorationImage(
//                       image: AssetImage('assets/images/Home4.png'))),
//             ),
//
//             Text(
//               icent.name,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontFamily: 'Nexa',
//                 color: Color(0xff008CFF),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//
//             Text(
//               icent.address,
//               style: TextStyle(
//                 fontSize: 20,
//                 fontFamily: 'Nexa',
//                 color: Color(0xff83A0B6),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//
//             Text(
//               icent.stars,
//               style: TextStyle(
//                 fontSize: 22,
//                 fontFamily: 'Nexa',
//                 color: Color(0xffFFC200),
//               ),
//               textAlign: TextAlign.center,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//             ),
//           ],
//         ),
//       ),
//     );

//..............................................
//..............................................
