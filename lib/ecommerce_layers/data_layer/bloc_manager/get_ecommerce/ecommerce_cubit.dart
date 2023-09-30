import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_a_h_ecommerce_app/core/constants/onboarding_list.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/presentation_layer/auth_view/auth_signIn_view_body.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as trans;
import 'ecommerce_states.dart';

class ECommerceCubit extends Cubit<ECommerceStates> {
  ECommerceCubit() : super(ECommerceCubitInitialState());

  static ECommerceCubit getECommerceCubitCubit(context) =>
      BlocProvider.of(context);

  int pageNum = 0;

  changeDots(int index) {
    pageNum = index;
    emit(ECommerceCubitCompleteChangeDotsState());
  }

  static int pageIndex = 0;

  goToAuth(int index, PageController pageController) {
    index++;
    pageIndex = index;

    if (index == onBoardingList.length) {
      Get.off(() => const AuthSignInViewBody(),
          transition: trans.Transition.leftToRightWithFade);
    } else {
      pageController.nextPage(
          duration: const Duration(milliseconds: 900),
          curve: Curves.bounceInOut);
    }
    emit(ECommerceCubitCompleteState());
  }

  ///////////////////// OnBoarding Finished /////////////////////


}
