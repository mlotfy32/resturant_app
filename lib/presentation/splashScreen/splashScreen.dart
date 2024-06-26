import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:resturantapp/presentation/logIn/logIn_View/logIn.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';
import 'package:resturantapp/presentation/resorces/assetsmanager.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Image.asset(AssetImages.splashLogo)));
  }

  Timer? timer;

  @override
  void initState() {
    timer = Timer(
      Duration(seconds: 3),
      () {
        Get.offNamed('/onBording');
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    timer!.cancel();
    super.dispose();
  }
}
