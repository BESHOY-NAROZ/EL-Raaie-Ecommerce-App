import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';

import 'auth_widgets/widget_auth_TextButton.dart';
import 'auth_widgets/widget_auth_button.dart';
import 'auth_widgets/widget_auth_textFormfField.dart';

class AuthResetPasswordViewBody extends StatelessWidget {
  const AuthResetPasswordViewBody({Key? key}) : super(key: key);
  static  GlobalKey<FormState> globalKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
              'Reset Password',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
            vertical: AppSize.defaultHeightSize * .01,
            horizontal: AppSize.defaultWidthSize! * .05),
        children: [
          const Center(
            child: Text(
              'New Password',
              style: TextStyle(
                  color: Colors.teal,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .05,
          ),
          const Center(
            child: Text(
              'Enter Your New Password.',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .1,
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'New Password',
                hintText: 'Enter New Password',
                iconData: Icons.password),
          ),          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'Re Password',
                hintText: 'Retype Your Password',
                iconData: Icons.password),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),


          SizedBox(
            height: AppSize.defaultHeightSize * .1,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppSize.defaultWidthSize! *
                  .2),
              child:  CustomAuthButton(text: 'Submit',onPressed: (){
                AuthFunctions.goToAuthPages('Success');
              },)),
          SizedBox(
            height: AppSize.defaultHeightSize * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text('Have an account'),
              CustomAuthTextButton(text: 'Sign In',onPressed: (){
                AuthFunctions.goToAuthPages('SignIn');
              },)
            ],
          )
        ],
      ),
    );
  }
}