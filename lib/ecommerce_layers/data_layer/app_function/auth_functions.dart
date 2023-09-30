import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a_h_ecommerce_app/core/shared_pref.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_forgetPassword_view_body.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_resetPassword_view_body.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_signIn_view_body.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_signUp_view_body.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_success_view_body.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_verification_Reset_view_body.dart';
import 'package:w_a_h_ecommerce_app/test/bloc/bloc_cubit.dart';
import 'package:w_a_h_ecommerce_app/test/maps_view.dart';
import 'package:w_a_h_ecommerce_app/test/notch_bottom_appBar.dart';

class AuthFunctions {
  static goToAuthPages(String sign, {BlocCubitTest? blocCubitTest}) {
    if (sign == 'SignIn') {
      Get.off(() => const AuthSignInViewBody(),
          transition: Transition.leftToRightWithFade);
    } else if (sign == 'SignUp') {
      Get.off(() => const AuthSignUpViewBody(),
          transition: Transition.leftToRightWithFade);
    } else if (sign == 'ForgetPassword') {
      Get.off(() => const AuthForgetPasswordViewBody(),
          transition: Transition.leftToRightWithFade);
    } else if (sign == 'verificationCode') {
      Get.off(() => const AuthVerificationResetViewBody(),
          transition: Transition.leftToRightWithFade);
    } else if (sign == 'resetPassword') {
      Get.off(() => const AuthResetPasswordViewBody(),
          transition: Transition.leftToRightWithFade);
    } else if (sign == 'Success') {
      Get.off(() => const AuthSuccessViewBody(),
          transition: Transition.leftToRightWithFade);
    }else if (sign == 'Test') {
      Get.off(() => const TestViewBody(),
          transition: Transition.leftToRightWithFade);
    }else if (sign == 'maps') {
      Get.off(() =>  MapsViewBody(blocCubitTest!),
          transition: Transition.leftToRightWithFade);
    }
  }

  static validInput(String val, int min, int max, String type) {
    if (type == "username") {
      if (!GetUtils.isUsername(val)) {
        return "not valid username";
      }
    }
    if (type == "email") {
      if (!GetUtils.isEmail(val)) {
        return "not valid email";
      }
    }

    if (type == "phone") {
      if (!GetUtils.isPhoneNumber(val)) {
        return "not valid phone";
      }
    }

    if (val.isEmpty) {
      return "can't be Empty";
    }

    if (val.length < min) {
      return "can't be less than $min";
    }

    if (val.length > max) {
      return "can't be larger than $max";
    }
  }

  static checkForm(GlobalKey<FormState> globalKey) {
    if (globalKey.currentState!.validate()) {
    } else {
    }
  }

  static Future<bool> exitAlert() {
    Get.defaultDialog(
        title: 'Warning',
        middleText: 'Do you want exit !!',
        actions: [
          ElevatedButton(
              onPressed: () {
                exit(0);
              },
              child: const Text('Confirm')),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: const Text('Cancel')),
        ]);
    return Future.value(true);
  }

  static saveIsNotFirstOpen(){
    SharedPref.putData('saveIsFirstOpen',true);
  }
  static  loadIsNotFirstOpen(){
   return SharedPref.getData('saveIsFirstOpen');
  }
}
