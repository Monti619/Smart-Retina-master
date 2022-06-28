import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart/shared/components/components.dart';

class DiabeticRetinopathyScreen extends StatefulWidget {
  const DiabeticRetinopathyScreen({Key? key}) : super(key: key);

  @override
  State<DiabeticRetinopathyScreen> createState() =>
      _DiabeticRetinopathyScreenState();
}

class _DiabeticRetinopathyScreenState extends State<DiabeticRetinopathyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        LFunction: () {
          Navigator.pop(context);
        },
        LeadingIcon: Icons.arrow_back,
        text: 'Diabetic retinopathy',
        // AFunction: () {
        //   Scaffold.of(context).openEndDrawer();
        // },
      ),
      endDrawer: DefaultDrawer(HText: 'Home',),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Center(
                  child: DefaultText(
                      text: 'Diabetic Retinopathy',
                      family: 'Nexa',
                      size: 25,
                      cl: Color(0xff000000),
                      weight: FontWeight.w900)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: MediaQuery.of(context).size.width - 20,
                height: 210,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff707070)),
                  borderRadius: BorderRadius.circular(52),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.09),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 10), // changes position of shadow
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWrapper(
                    text:
                        "Diabetic retinopathy (die-uh-BET-ik ret-ih-NOP-uh-thee) is a diabetes complication that affects eyes.\ It's caused by damage to the blood vessels of the light-sensitive tissue at the back of the eye (retina).At first, diabetic retinopathy might cause no symptoms or only mild vision problems. But it can lead to blindness.The condition can develop in anyone who has type 1 or type 2 diabetes. The longer you have diabetes and the less controlled your blood sugar is, the more likely you are to develop this eye complication.",
                    title: 'Overview',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextWrapper(
                    text:
                        "",
                    title: 'Symptoms',
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  TextWrapper(
                    text:
                        "",
                    title: 'Risk Factors',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextWrapper extends StatefulWidget {
  const TextWrapper({Key? key, required this.text, required this.title})
      : super(key: key);

  final String text;
  final String title;

  @override
  _TextWrapperState createState() => _TextWrapperState();
}

class _TextWrapperState extends State<TextWrapper>
    with TickerProviderStateMixin {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      isExpanded
          ? Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff26D1EF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    isExpanded = false;
                  });
                },
                child: DefaultText(
                    text: widget.title,
                    family: 'Nexa',
                    size: 25,
                    cl: Colors.white,
                    weight: FontWeight.w900),
              ),
            )
          : Container(
              width: 200,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff26D1EF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(14),
                  bottomRight: Radius.circular(14),
                ),
              ),
              child: MaterialButton(
                onPressed: () {
                  setState(() {
                    isExpanded = true;
                  });
                },
                child: DefaultText(
                    text: widget.title,
                    family: 'Nexa',
                    size: 25,
                    cl: Colors.white,
                    weight: FontWeight.w900),
              ),
            ),
      // OutlinedButton.icon(
      //     icon:  Icon(Icons.arrow_upward),
      //     label:  Text (widget.title),
      //     onPressed: () => setState(() => isExpanded = false))
      //     : TextButton.icon(
      //     icon:  Icon(Icons.arrow_downward),
      //     label:  Text(widget.title),
      //     onPressed: () => setState(() => isExpanded = true)),
      AnimatedSize(
          duration: Duration(milliseconds: 300),
          child: ConstrainedBox(
              constraints:
                  isExpanded ? BoxConstraints() : BoxConstraints(maxHeight: 0),
              child: Text(

                widget.text,
               // textAlign: TextAlign.start,
                style: TextStyle(fontSize: 16),
                softWrap: true,
                overflow: TextOverflow.fade,
              ))),
    ]);
  }
}
