import 'package:flutter/material.dart';
import 'package:smart/models/models.dart';
import 'package:smart/shared/components/components.dart';

class AddNewScreen extends StatefulWidget {
  const AddNewScreen({Key? key}) : super(key: key);

  @override
  State<AddNewScreen> createState() => _AddNewScreenState();
}

class _AddNewScreenState extends State<AddNewScreen> {
  bool chvalue = true;
  List<FormModel> form = [
    FormModel(text: 'Card Number', KeyboardType: TextInputType.number),
    FormModel(text: 'Expire Date', KeyboardType: TextInputType.datetime),
    FormModel(text: 'Cardholder\'s Name', KeyboardType: TextInputType.text),
    FormModel(text: 'CVC/CVV 2', KeyboardType: TextInputType.number),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: DefaultDrawer(HText: 'Mona'),
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
          text: 'Add card',
          LeadingIcon: Icons.arrow_back,
          LFunction: () {Navigator.pop(context);}),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          width: double.infinity,
          child: ListView(
            children: [
              Row(
                children: [
                  DefaultText(
                    text: 'New Card',
                    weight: FontWeight.w900,
                    family: 'Nexa',
                    size: 20,
                    cl: Color(0xff26D1EF),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Mask Group 2.png',
                    ),
                    fit: BoxFit.fill,
                  )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) => ItemBuilder(form[index]),
                    itemCount: form.length),
              ),
              Divider(
                indent: 10,
                endIndent: 10,
                color: Colors.grey[300],
                height: 15,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: CheckboxListTile(
                  title: DefaultText(
                      text: 'Save your card information, it\'s safe',
                      family: "Nexa",
                      size: 12,
                      cl: Color(0xff26D1EF)),
                  value: chvalue,
                  onChanged: (v) {
                    setState(() {
                      chvalue = v!;
                    });
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: DefaultButton(function: () {}, text: 'Add Card'),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget ItemBuilder(
    FormModel Iform,
  ) {
    return Column(
      children: [
        Divider(
          color: Colors.grey[300],
          height: 15,
          thickness: 2,
        ),
        TextFormField(
          keyboardType: Iform.KeyboardType,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: Iform.text,
              hintStyle: TextStyle(
                fontSize: 12,
                fontFamily: 'Nexa',
                color: Color(0xffCAC6C5),
              )),
        )
      ],
    );
  }
}
