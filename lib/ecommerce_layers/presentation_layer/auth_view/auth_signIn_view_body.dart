import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';

import 'auth_widgets/widget_auth_TextButton.dart';
import 'auth_widgets/widget_auth_button.dart';
import 'auth_widgets/widget_auth_textFormfField.dart';

class AuthSignInViewBody extends StatelessWidget {
  const AuthSignInViewBody({Key? key}) : super(key: key);

  static  GlobalKey<FormState> globalKey =  GlobalKey<FormState>();
  static  GlobalKey<FormState> passGlobalKey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    AppSize().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Center(
            child: Text(
              'Sign In',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: WillPopScope(
        onWillPop: AuthFunctions.exitAlert,
        child: Form(
          key: globalKey,
          child: ListView(
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
                  'Sign In With Your Email And Password OR Continue With Social '
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
              SizedBox(
                height: AppSize.defaultHeightSize * .08,
                child:  CustomAuthTextFormField(
                  validator: (value) {
                    return AuthFunctions.validInput(value!, 7, 30, 'email');
                  },
                    labelText: 'Email',
                    hintText: 'Enter Your Email',
                    iconData: Icons.email_outlined,),
              ),
              SizedBox(
                height: AppSize.defaultHeightSize * .03,
              ),
              SizedBox(
                height: AppSize.defaultHeightSize * .08,
                child:  CustomAuthTextFormField(
                    validator: (value) {
                      return AuthFunctions.validInput(value!, 7, 30, 'password');
                    },
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    iconData: Icons.password),
              ),

              Container(
                padding: EdgeInsets.only(left: AppSize.defaultWidthSize! * .55),
                child:  CustomAuthTextButton(text: 'Forget Password',onPressed: (){
                   // AuthFunctions.goToAuthPages('ForgetPassword');
                   AuthFunctions.goToAuthPages('maps');

                }),
              ),
              SizedBox(
                height: AppSize.defaultHeightSize * .1,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: AppSize.defaultWidthSize! *
                      .2),
                  child:  CustomAuthButton(text: 'Sign In',onPressed: (){
                    AuthFunctions.checkForm(globalKey);

                  },)),
              SizedBox(
                height: AppSize.defaultHeightSize * .05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                  const Text('Don\'t have an account'),
                  CustomAuthTextButton(text: 'Sign Up',onPressed: (){
                    AuthFunctions.goToAuthPages('SignUp');
                  },)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}


