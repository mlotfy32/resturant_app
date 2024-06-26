import 'package:flutter/material.dart';
import 'package:resturantapp/app/appTheam.dart';
import 'package:resturantapp/presentation/forgetPass/forgetPass.dart';
import 'package:resturantapp/presentation/homeScreen/homeScreen.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/logIn.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingViewModel/on_bord_state_cubit.dart';
import 'package:resturantapp/presentation/register/register.dart';
import 'package:resturantapp/presentation/resorces/appRoutes.dart';
import 'package:resturantapp/presentation/splashScreen/splashScreen.dart';
import 'package:get/get.dart';
import 'package:resturantapp/presentation/storeDetailes/storeDetailes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<OnBordStateCubit>(
      create: (context) => OnBordStateCubit(),
      child: GetMaterialApp(
        getPages: AppRoutes.routes,
        initialRoute: '/',
        theme: Theam().getAppTheam(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
