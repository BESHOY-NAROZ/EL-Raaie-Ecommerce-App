import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_colors.dart';

class CustomAuthTextButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const CustomAuthTextButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(alignment: Alignment.bottomRight),
      onPressed: onPressed,
      child: Text(text,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: AppColors.mainColor)),
    );
  }
}