import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';

class CustomAuthButton extends StatelessWidget {
 final String text;
 final void Function() onPressed;

 const CustomAuthButton({Key? key, required this.text, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(

      color: Colors.teal.withOpacity(.5),
      elevation: 10,
      onPressed: onPressed,
      child: Text(
        text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: AppSize.defaultSize! * .3,
              fontSize: AppSize.defaultSize! * 2.5,
              color: Colors.white),
      )
    );
  }
}
