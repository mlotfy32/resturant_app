import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:resturantapp/presentation/resorces/colorManager.dart';

part 'logincubit_state.dart';

class LogincubitCubit extends Cubit<LogincubitState> {
  LogincubitCubit() : super(LogincubitInitial());
  checkValidation(bool form1, bool form2) {
    if (form1 == true && form2 == true) {
      print('-=-=-=-=-=-');
      buttonIsActive(true);
    } else {
      print('========$form1==========$form2');
      buttonIsActive(false);
    }
  }

  buttonIsActive(bool isActive) {
    emit(isButtonActive(isActive: isActive));
  }
}
