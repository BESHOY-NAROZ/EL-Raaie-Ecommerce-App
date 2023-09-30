import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:w_a_h_ecommerce_app/test/bloc/bloc_cubit.dart';


class MapsViewBody extends StatelessWidget {
 final BlocCubitTest blocCubitTest;

  const MapsViewBody(this.blocCubitTest, {super.key});

  @override
  Widget build(BuildContext context) {
    return  blocCubitTest.position != null
                ? GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(blocCubitTest.position!.latitude,
                    blocCubitTest.position!.longitude),
                zoom: 14.4746,
              ),
              mapType: MapType.normal,
            )
                : const Center(child: LinearProgressIndicator());


  }
}
