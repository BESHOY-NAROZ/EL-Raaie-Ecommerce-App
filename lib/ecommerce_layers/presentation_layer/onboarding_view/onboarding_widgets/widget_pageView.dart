import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/core/constants/onboarding_list.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_cubit.dart';

class CustomOnBoardingPageView extends StatelessWidget {
  const CustomOnBoardingPageView({
    super.key,
    required this.pageController,
    required this.eCommerceCubit,
  });

  final PageController pageController;
  final ECommerceCubit eCommerceCubit;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: onBoardingList.length,
      onPageChanged: (value) {
        ECommerceCubit.pageIndex = value;
        eCommerceCubit.changeDots(value);
        // eCommerceCubit.goToAuth(value);
      },
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            SizedBox(
              height: AppSize.defaultHeightSize * .06,
            ),
            Text(
                style: TextStyle(
                    color: Colors.teal,
                    fontWeight: FontWeight.bold,
                    fontSize: AppSize.defaultSize! * 2.5),
                onBoardingList[index].title!),
            SizedBox(
              height: AppSize.defaultHeightSize * .03,
            ),
            SizedBox(
              height: AppSize.defaultSize! * 30,
              width: AppSize.defaultSize! * 30,
              child: Image.asset(
                fit: BoxFit.fill,
                onBoardingList[index].image!,
              ),
            ),
            SizedBox(
              height: AppSize.defaultHeightSize * .03,
            ),
            SizedBox(
              height: AppSize.defaultHeightSize * .15,
              child: Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: AppSize.defaultSize! * 1.8,
                      height: AppSize.defaultSize! * .2),
                  onBoardingList[index].body!),
            ),
          ],
        );
      },
    );
  }
}
