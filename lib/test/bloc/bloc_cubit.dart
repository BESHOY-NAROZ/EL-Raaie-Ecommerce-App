import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:w_a_h_ecommerce_app/test/bloc/bloc_states.dart';

class BlocCubitTest extends Cubit<BlocStates> {
  BlocCubitTest() : super(TestInitialState());

  static BlocCubitTest get(context) {
    return BlocProvider.of(context);
  }

  // Position ? myPosition;
  //
  // getMyLocation(){
  //      Geolocator.getCurrentPosition().then((value) {
  //        myPosition =value;
  //        emit(TestCompleteLoginState());
  //      },);
  //      emit(TestCompleteLoginState());
  //   return myPosition;
  // }

 int ? myNumber ;
  changeNumber(){

   emit(TestCompleteLoginState());
   return  myNumber = null;
  }

  static Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    return Future.value(position);
  }

  Position ? position;

   Position ? getCurrentPosition() {
     getCurrentLocation().then(
      (value) {
        position = value;
        emit(TestCompleteLoginState());

      },
    );
    emit(TestCompleteLoginState());

    return position;
  }

}