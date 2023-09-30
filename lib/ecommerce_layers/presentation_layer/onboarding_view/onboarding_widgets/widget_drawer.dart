import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/core/localization/locale.dart';

class CustomOnBoardingDrawer extends StatelessWidget {
  const CustomOnBoardingDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: AppSize.defaultHeightSize * .1),
          const Text(
            'Change Language',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: AppSize.defaultHeightSize * .1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: AppSize.defaultSize! * 15,
                child: MaterialButton(
                  color: Colors.teal.withOpacity(.5),
                  elevation: 10,
                  child: Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: AppSize.defaultSize! * .3,
                          fontSize: AppSize.defaultSize! * 2.5,
                          color: Colors.white),
                      'English'),
                  onPressed: () {
                    LocaleLanguage.changeLanguage('en');
                  },
                ),
              ),
              SizedBox(width: AppSize.defaultWidthSize! * .05),
              SizedBox(
                width: AppSize.defaultSize! * 15,
                child: MaterialButton(
                  color: Colors.teal.withOpacity(.5),
                  elevation: 10,
                  child: Text(
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: AppSize.defaultSize! * .3,
                          fontSize: AppSize.defaultSize! * 2.5,
                          color: Colors.white),
                      'عربي'),
                  onPressed: () {
                    LocaleLanguage.changeLanguage('ar');
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
