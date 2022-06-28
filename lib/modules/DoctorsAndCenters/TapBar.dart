import 'package:flutter/material.dart';
import 'package:smart/modules/DoctorsAndCenters/Centers.dart';
import 'package:smart/modules/DoctorsAndCenters/Doctors.dart';
import 'package:smart/shared/components/components.dart';

class TaPBarScreen extends StatefulWidget {
  const TaPBarScreen({Key? key}) : super(key: key);

  @override
  State<TaPBarScreen> createState() => _TaPBarScreenState();
}

class _TaPBarScreenState extends State<TaPBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? Tcontroller;
  @override
  void initState() {
    super.initState();
    Tcontroller = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    Tcontroller!.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DefaultDrawer(HText: 'Hadi'),
      backgroundColor: Colors.red,
      appBar: AppBar(

        toolbarHeight: 100,
        iconTheme: IconThemeData(color: Color(0xff26D1Ef)),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Color(0xff26D1EF),
          ),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'Doctors & Centers',
          style: TextStyle(

            fontWeight: FontWeight.w900,
            fontSize: 14,
            color: Color(0xff26D1EF),

          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          //unselectedLabelColor: Color(0xff26D1EF),
          padding: EdgeInsets.all(20.0),
          indicatorColor: Color(0xff26D1EF),
          indicatorWeight: 5,
          indicatorPadding: EdgeInsets.symmetric(horizontal: 20),
          controller: Tcontroller,
          tabs: [
            Container(
              width: 78,
              height: 71,
              decoration: BoxDecoration(
                  color: Color(0x282A9FFF),

                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: AssetImage('assets/images/doc.png'))),
            ),
            Container(
              width: 78,
              height: 71,
              decoration: BoxDecoration(
                  color: Color(0x282A9FFF),

                  borderRadius: BorderRadius.circular(24),
                  image: DecorationImage(
                      image: AssetImage('assets/images/center.png'))),
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: Tcontroller,
        children: [DoctorsScreen(), CentersScreen()],
      ),
    );
  }
}
