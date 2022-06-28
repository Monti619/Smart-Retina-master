import 'package:flutter/material.dart';

class AddQuestion extends StatelessWidget {
  final String hint;
  final String errVal;
  final IconData icon;
  final Function onClick;

  const AddQuestion({
    Key? key,
    required this.hint,
    required this.icon,
    required this.errVal,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        child: TextFormField(
//          obscureText: hint == 'Enter your password' ? true : false,
          validator: (value) {
            if (value!.isEmpty) {
              return errVal;
            }
          },
          cursorColor: Colors.white,
          decoration: InputDecoration(
            hintText: hint,
            fillColor: Colors.white,
            prefixIcon: Icon(
              icon,
//            color: KMainColor,
            ),
            filled: true,
//          fillColor: KSecondaryColor,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.deepOrange),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.white),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: const BorderSide(color: Colors.deepOrange),
            ),
          ),
          onSaved: onClick(),
        ),
      ),
    );
  }
}
