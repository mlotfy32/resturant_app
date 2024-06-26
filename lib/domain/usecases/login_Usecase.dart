import 'package:dartz/dartz.dart';
import 'package:resturantapp/data/network/Failure.dart';
import 'package:resturantapp/data/network/Requests.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/domain/repository/repository.dart';
import 'package:resturantapp/domain/usecases/base_usecases.dart';

class LoginUseCase implements BaseUsecases<LoginUseCaseInput, Authontication> {
  Repositry _repositry;
  LoginUseCase(this._repositry);
  @override
  Future<Either<Failure, Authontication>> excute(
      LoginUseCaseInput input) async {
    return await _repositry.Login(LoginRequest(input.email, input.password));
  }
}

class LoginUseCaseInput {
  String email;
  String password;
  LoginUseCaseInput(this.email, this.password);
}
