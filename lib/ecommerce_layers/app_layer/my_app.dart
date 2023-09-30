import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_theme.dart';
import 'package:w_a_h_ecommerce_app/core/localization/translations.dart';
import 'package:w_a_h_ecommerce_app/core/services/my_services.dart';

import 'package:w_a_h_ecommerce_app/test/notch_bottom_appBar.dart';

class MyApp extends StatelessWidget {
    const MyApp({Key? key, this.user,}) : super(key: key);
    final dynamic user;
    @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: themeEnglish,
        debugShowCheckedModeBanner: false,
        translations: MyTranslations(),
        locale: MyServices.getDeviceLanguage(),
        home:
             const TestViewBody());
        // user == null || user == false? const
        // OnBoardingViewBody():
        // const AuthSignInViewBody());
  }
}
