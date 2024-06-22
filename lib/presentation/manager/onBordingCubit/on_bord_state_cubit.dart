import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:resturantapp/presentation/logIn/logIn.dart';
import 'package:resturantapp/presentation/register/register.dart';
import 'package:get/get.dart';
part 'on_bord_state_state.dart';

class OnBordStateCubit extends Cubit<OnBordStateState> {
  OnBordStateCubit() : super(OnBordStateInitial());
  var newValue;
  updateStateIncrement(int index, PageController controle) {
    print('======$index');
    if (index == 2) {
      Get.offNamed('/logIn');
    }
    if (index < 2 || index == 0) {
      newValue = index + 1;
      controle.animateToPage(
          duration: Duration(milliseconds: 800),
          newValue,
          curve: Curves.easeInQuint);
      print('updateStateIncrement');
    }
  }

  updateStatedecrement(int index, PageController controle) {
    print('======$index');
    newValue = index - 1;
    if (index > 0) {
      controle.animateToPage(
          duration: Duration(milliseconds: 800),
          newValue,
          curve: Curves.easeInQuint);
      print('updateStatedecrement');
    }
  }
}
