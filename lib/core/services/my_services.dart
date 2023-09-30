import 'dart:ui';

import 'package:get/get.dart';

class MyServices{
  static Locale? getDeviceLanguage(){
   Locale? deviceLanguage =  Get.deviceLocale;
return deviceLanguage;
  }
}