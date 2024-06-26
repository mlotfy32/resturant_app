import 'package:get/get.dart';
import 'package:resturantapp/data/network/Failure.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/domain/usecases/login_Usecase.dart';
import 'package:resturantapp/presentation/common/freezed_Data_Classes.dart';
import 'package:resturantapp/presentation/resorces/appStrings.dart';

class LogInViewModel {
  var loginObject = LogInObject("", "");
  late final LoginUseCase _loginUseCase;

  late final LogInObject _logInObject;
  logIn() async {
    (await _loginUseCase.excute(
            LoginUseCaseInput(_logInObject.email, _logInObject.password)))
        .fold((failure) => Failure, (data) => {print(data.customer!.name)});
  }
}
