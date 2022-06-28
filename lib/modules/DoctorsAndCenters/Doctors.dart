import 'package:flutter/material.dart';

import 'package:smart/shared/components/components.dart';

class DoctorsScreen extends StatefulWidget {
  const DoctorsScreen({Key? key}) : super(key: key);

  @override
  State<DoctorsScreen> createState() => _DoctorsAndCentersScreenState();
}

class _DoctorsAndCentersScreenState extends State<DoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 22,
                    width: MediaQuery.of(context).size.width / 2 - 20,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          suffixIcon: Icon(
                            Icons.search,
                            size: 15,
                            color: Color(0xff26D1EF),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          hintText: 'Search',
                          hintStyle: TextStyle(
                              fontSize: 12,
                              fontFamily: 'Nexa-Trial-Light.ttf',
                              color: Color(0xff26D1EF),
                              fontWeight: FontWeight.w900)),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                DefaultText(
                    text: 'Order by',
                    family: 'Nexa',
                    size: 15,
                    cl: Color(0xff26D1EF),
                    weight: FontWeight.w900),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    height: 22,
                    width: 22,
                    //alignment: Alignment(1,2),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      width: 200,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff26D1EF))),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff26D1EF)),
                        value: drobval,
                        onChanged: (val) {
                          setState(() {
                            drobval = val;
                          });
                        },
                        items: <String>['Location', 'Rating']
                            .map<DropdownMenuItem<String>>((String v) {
                          return DropdownMenuItem<String>(
                            child: Text(v),
                            value: v,
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 20,),
            Expanded(
                child: GridView.builder(

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: 200,
                  crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
              itemBuilder: (context, index) =>
                  DoctorBuilder(Doctors[index],idoc: Doctors[index]),
                  itemCount: Doctors.length,

            ))
          ],
        ),
      ),
    );
  }

  String? drobval;
}
