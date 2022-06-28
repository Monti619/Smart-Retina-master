// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../components/custom_text_field.dart';

class MealItem extends StatefulWidget {
  final String name;
  final String imageURL;
  final String title;
  final int nLike;
  final int nComment;

  const MealItem({
    required this.name,
    required this.imageURL,
    required this.title,
    required this.nLike,
    required this.nComment,
  });

  @override
  State<MealItem> createState() => _MealItemState();
}

class _MealItemState extends State<MealItem> {
  bool isResponse = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(44.0)),
      elevation: 4.0,
      margin: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(33.0),
              topRight: Radius.circular(15.0),
            ),
            child: Container(
              height: 180.0,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: Image.asset(
                              widget.imageURL,
                              height: 180.0,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(widget.name),
                        Radio(value: true, groupValue: '', onChanged: (v){}),
                        Radio(value: true, groupValue: '', onChanged: (v){}),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(widget.title),
                  ),
                ],
              ),
//              child: Image.asset(
//                imageURL,
//                height: 180.0,
//                width: double.infinity,
//                fit: BoxFit.cover,
//              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Text(
                      '${widget.nLike}',
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      width: 6.0,
                    ),
                    const Icon(Icons.favorite),
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    width: 6,
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
//                      isResponse != isResponse;
                      if (isResponse) {
                        isResponse = false;
                      } else {
                        isResponse = true;
                      }
//                      print(isResponse);
                    });
                  },
                  child: Row(
                    children: [
                      Text(
                        '${widget.nComment}',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      const Icon(Icons.comment),
                    ],
                  ),
                ),
              ],
            ),
          ),
          isResponse
              ? Container(
                  height: 100,
                  width: MediaQuery.of(context).size.width * .8,
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hint: 'write a response',
                          icon: Icons.title,
                          errVal: 'comment is empty',
                          onClick: () {},
                        ),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                )
              : Text(''),
        ],
      ),
    );
  }
}
