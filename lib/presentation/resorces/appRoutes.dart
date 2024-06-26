import 'package:get/get.dart';
import 'package:resturantapp/presentation/forgetPass/forgetPass.dart';
import 'package:resturantapp/presentation/homeScreen/homeScreen.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/logIn.dart';
import 'package:resturantapp/presentation/onpordingScreen/onBordingView/onpordingScreenView.dart';
import 'package:resturantapp/presentation/register/register.dart';
import 'package:resturantapp/presentation/splashScreen/splashScreen.dart';
import 'package:resturantapp/presentation/storeDetailes/storeDetailes.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => splashScreen()),
    GetPage(name: '/logIn', page: () => logIn()),
    GetPage(name: '/register', page: () => register()),
    GetPage(name: '/forgetPass', page: () => forgetPass()),
    GetPage(name: '/homeScreen', page: () => Homescreen()),
    GetPage(name: '/storeDetailes', page: () => storeDetailes()),
    GetPage(name: '/onBording', page: () => onpordingScreen()),
  ];
}
