import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:w_a_h_ecommerce_app/ecommerce_layers/data_layer/app_function/auth_functions.dart';
import 'package:w_a_h_ecommerce_app/test/bloc/bloc_cubit.dart';
import 'package:w_a_h_ecommerce_app/test/bloc/bloc_states.dart';

class TestViewBody extends StatelessWidget {
  const TestViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) {
          return BlocCubitTest();
        },
         child: BlocBuilder<BlocCubitTest,BlocStates>(builder: (context, state) {
           BlocCubitTest blocCubitTest = BlocCubitTest.get(context);

           return Scaffold(
             backgroundColor: Colors.orange,
             floatingActionButton: FloatingActionButton(
                 onPressed: () {
                   blocCubitTest.getCurrentPosition();
                   AuthFunctions.goToAuthPages('maps',blocCubitTest: blocCubitTest);

                 },
                 child: const Icon(Icons.add)),
             floatingActionButtonLocation:
             FloatingActionButtonLocation.centerDocked,
             bottomNavigationBar: BottomAppBar(
               shape: const CircularNotchedRectangle(),
               notchMargin: 10,
               child: Row(
                 children: [
                   MaterialButton(
                     onPressed: () {},
                     child: const Text('Test'),
                   ),
                   MaterialButton(
                     onPressed: () {},
                     child: const Text('Test'),
                   ),
                   const Spacer(),
                   MaterialButton(
                     onPressed: () {},
                     child: const Text('Test'),
                   ),
                   MaterialButton(
                     onPressed: () {},
                     child: const Text('Test'),
                   ),
                 ],
               ),
             ),

           );
         },),
       );
  }
}
