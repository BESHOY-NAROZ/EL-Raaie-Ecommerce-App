import 'dart:io';

Future<bool> checkInternet() async {
  List<InternetAddress>? result;
  try {
    result = await InternetAddress.lookup('google'
        '.com');
  } catch (e) {
    return false;
  }
  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}

Future<void> printResult() async {
  // bool res = await checkInternet();
}