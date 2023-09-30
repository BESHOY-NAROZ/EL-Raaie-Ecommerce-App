import 'dart:ui';

import 'package:get/get.dart';

class LocaleLanguage{

 static changeLanguage(String languageCode){
Locale locale = Locale(languageCode);
    Get.updateLocale(locale);
 }

}