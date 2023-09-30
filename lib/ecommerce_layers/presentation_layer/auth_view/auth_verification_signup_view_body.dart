import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';
import 'auth_widgets/widget_auth_TextButton.dart';
import 'auth_widgets/widget_auth_button.dart';

class AuthVerificationSignUpViewBody extends StatelessWidget {
  const AuthVerificationSignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
              'Verification Code',
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
              'Check Your Email',
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
              'Enter Your Verification Code OR Continue With Social '
                  'Media.',
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
          Center(
            child: OTPTextField(
              // controller: otpController,
                length: 5,
                width: AppSize.defaultWidthSize! ,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 50,
                fieldStyle: FieldStyle.box,
                outlineBorderRadius: 15,
                style: const TextStyle(fontSize: 17),
                onChanged: (pin) {
                },
                onCompleted: (pin) {
                  AuthFunctions.goToAuthPages('Success');
                }),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),

          Container(
            padding: EdgeInsets.only(left: AppSize.defaultWidthSize! * .35),
            child: CustomAuthTextButton(text: 'Don\'t received a verification'
                ' code'
                , onPressed:
                    () {}),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .1,
          ),
          Container(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSize.defaultWidthSize! *
                      .2),
              child: CustomAuthButton(text: 'Check', onPressed: () {

              },)),
          SizedBox(
            height: AppSize.defaultHeightSize * .05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Have an account'),
              CustomAuthTextButton(text: 'Sign In', onPressed: () {
                AuthFunctions.goToAuthPages('SignIn');
              },)
            ],
          )
        ],
      ),
    );
  }
}