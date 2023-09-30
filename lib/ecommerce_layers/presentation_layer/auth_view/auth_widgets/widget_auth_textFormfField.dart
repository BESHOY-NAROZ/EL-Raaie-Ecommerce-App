import 'package:flutter/material.dart';

class CustomAuthTextFormField extends StatelessWidget {
  const CustomAuthTextFormField({Key? key, required this.labelText, required this.hintText, required this.iconData, required this.validator, }) : super(key: key);
final String? Function(String?) validator;
  final String labelText;
  final String hintText;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      cursorColor: Colors.black,
      validator: validator,
      decoration: InputDecoration(
        hintText: hintText,
        label:  Text(
          labelText,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
        hintStyle: const TextStyle(decoration: TextDecoration.none),
        suffixIcon:  Icon(
          color: Colors.teal.withOpacity(.5),
          iconData,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: const BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
