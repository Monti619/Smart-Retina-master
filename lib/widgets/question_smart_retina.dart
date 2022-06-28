import 'package:flutter/material.dart';

class QuestionSmartRetina extends StatelessWidget {
  final String question;
  final Function() function;

  const QuestionSmartRetina({
    Key? key,
    required this.question,
    required this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: InkWell(
        onTap: function,
        child: Container(
//          height: 500.0,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
//            color: Theme.of(context).primaryColor.withOpacity(.2),
            borderRadius: BorderRadius.circular(20.0),
//            boxShadow: const [
//              BoxShadow(
//                color: Colors.white,
//                blurRadius: 2.0,
//                offset: Offset(4.0, 4.0),
//              )
//            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Center(
                  child: Text(
                    question,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: function,
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/true.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: function,
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.asset(
                              'assets/false.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
