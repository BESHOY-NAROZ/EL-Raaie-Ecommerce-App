import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_cubit.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_states.dart';
import 'onboarding_widgets/widget_button.dart';
import 'onboarding_widgets/widget_drawer.dart';
import 'onboarding_widgets/widget_on_dots.dart';
import 'onboarding_widgets/widget_pageView.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    AppSize().init(context);
    return Scaffold(
         drawer: const CustomOnBoardingDrawer(),
        body: BlocProvider(
          create: (BuildContext context) {
            return ECommerceCubit();
          },
          child: BlocBuilder<ECommerceCubit, ECommerceStates>(
            builder: (BuildContext context, state) {
              ECommerceCubit eCommerceCubit =
                  ECommerceCubit.getECommerceCubitCubit(context);
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: AppSize.defaultHeightSize * .76,
                    child: CustomOnBoardingPageView(
                        pageController: pageController,
                        eCommerceCubit: eCommerceCubit),
                  ),
                  SizedBox(
                    height: AppSize.defaultHeightSize * .04,
                  ),
                  const SizedBox(
                    height: 10,
                    width: 49.5,
                    child: CustomOnBoardingDots(),
                  ),
                  SizedBox(
                    height: AppSize.defaultHeightSize * .08,
                  ),
                  SizedBox(
                    width: AppSize.defaultSize! * 20,
                    child: CustomOnBoardingButton(eCommerceCubit: eCommerceCubit, pageController: pageController),
                  ),
                ],
              );
            },
          ),
        ));
  }
}




