import 'package:get/get.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/models/onboarding_data_model.dart';

import '../assets_controller/assets_image_controller.dart';

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
      title: "2".tr, body: "3".tr, image: AssetsImagesController.firstOnBoarding),
  OnBoardingModel(
      title: "4".tr, body: "5".tr, image: AssetsImagesController.secondOnBoarding),
  OnBoardingModel(
      title: "6".tr, body: "7".tr, image: AssetsImagesController.thirdOnBoarding),
  // OnBoardingModel(
  //     title: "Fast Delivery",
  //     body:
  //         "We Have a 100k Product , Choose \n Your Product From Our E-commerce Shop",
  //     image: AppImageAsset.onBoardingImageFour),
];
