import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_a_h_ecommerce_app/core/constants/onboarding_list.dart';
import 'package:w_a_h_ecommerce_app/core/constants/app_size.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_cubit.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/bloc_manager/get_ecommerce/ecommerce_states.dart';

class CustomOnBoardingDots extends StatelessWidget {
  const CustomOnBoardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ECommerceCubit, ECommerceStates>(
      builder: (BuildContext context, state) {
        ECommerceCubit eCommerceCubit =
            ECommerceCubit.getECommerceCubitCubit(context);
        return ListView.separated(
          itemCount: onBoardingList.length,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: AppSize.defaultWidthSize! * .01,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 10,
              width: eCommerceCubit.pageNum == index ? 20 : 10,
              decoration: BoxDecoration(
                  color: Colors.teal.withOpacity(.5),
                  borderRadius: BorderRadius.circular(20)),
            );
          },
        );
      },
    );
  }
}
