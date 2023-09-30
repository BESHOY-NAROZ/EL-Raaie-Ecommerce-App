import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_cubit.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton({
    super.key,
    required this.eCommerceCubit,
    required this.pageController,
  });

  final ECommerceCubit eCommerceCubit;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.teal.withOpacity(.5),
      elevation: 10,
      child: Text(
          style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: AppSize.defaultSize! * .3,
              fontSize: AppSize.defaultSize! * 2.5,
              color: Colors.white),
ECommerceCubit.pageIndex != 2 ? '1'.tr :  '2'.tr
      ),
      onPressed: () {
        eCommerceCubit.goToAuth(
            ECommerceCubit.pageIndex, pageController);
        AuthFunctions.saveIsNotFirstOpen();
        AuthFunctions.loadIsNotFirstOpen();
      },
    );
  }
}