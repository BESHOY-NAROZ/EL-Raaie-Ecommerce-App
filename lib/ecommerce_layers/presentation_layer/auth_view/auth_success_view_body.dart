import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_colors.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';

import 'auth_widgets/widget_auth_button.dart';

class AuthSuccessViewBody extends StatelessWidget {
  const AuthSuccessViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
          'Success',
          style: TextStyle(
              color: Colors.grey, fontSize: 22, fontWeight: FontWeight.bold),
        )),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: AppSize.defaultHeightSize * .2,
          ),
          Icon(
            Icons.verified_outlined,
            color: AppColors.mainColor,
            size: 150,
          ),
          const Spacer(),
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.defaultWidthSize! * .2),
              child: CustomAuthButton(
                text: 'Sign In Now',
                onPressed: () {
                  AuthFunctions.goToAuthPages('SignIn');
                },
              )),
          SizedBox(
            height: AppSize.defaultHeightSize * .2,
          ),
        ],
      ),
    );
  }
}
