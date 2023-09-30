import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';
import 'auth_widgets/widget_auth_TextButton.dart';
import 'auth_widgets/widget_auth_button.dart';
import 'auth_widgets/widget_auth_textFormfField.dart';

class AuthSignUpViewBody extends StatelessWidget {
  const AuthSignUpViewBody({Key? key}) : super(key: key);
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
              'Sign Up',
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
              'Welcome Back',
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
              'Sign Up With Your Email And Password OR Continue With Social '
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
            height: AppSize.defaultHeightSize * .05,
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'User Name',
                hintText: 'Enter Your User Name',
                iconData: Icons.person_2_outlined),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),  SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'Email',
                hintText: 'Enter Your Password',
                iconData: Icons.email_outlined),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),  SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'Phone',
                hintText: 'Enter Your Phone Number',
                iconData: Icons.mobile_screen_share_outlined),
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .03,
          ),
          SizedBox(
            height: AppSize.defaultHeightSize * .08,
            child:  CustomAuthTextFormField(
                validator: (value) {
                  return AuthFunctions.validInput(value!, 7, 30, '');
                },
                labelText: 'Password',
                hintText: 'Enter Your Password',
                iconData: Icons.password),
          ),


          SizedBox(
            height: AppSize.defaultHeightSize * .05,
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: AppSize.defaultWidthSize! *
                  .2),
              child:  CustomAuthButton(text: 'Sign Up',onPressed: (){
                AuthFunctions.goToAuthPages('verificationCode');
              })),
          SizedBox(
            height: AppSize.defaultHeightSize * .01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              const Text('Have an account'),
              CustomAuthTextButton(text: 'Sign In', onPressed: (){
                AuthFunctions.goToAuthPages('SignIn');
              },)
            ],
          )
        ],
      ),
    );
  }
}


