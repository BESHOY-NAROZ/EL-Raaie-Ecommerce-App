import 'package:flutter/material.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/check_internet.dart';
import 'core/services/my_services.dart';
import 'core/shared_pref.dart';
import 'ecommerce_layers/app_layer/my_app.dart';
import 'ecommerce_layers/data_layer/app_function/auth_functions.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  MyServices.getDeviceLanguage();
 await SharedPref.sharedDefinition();
 await printResult();
  final user = AuthFunctions.loadIsNotFirstOpen();

  runApp(  MyApp(user: user,));
}

