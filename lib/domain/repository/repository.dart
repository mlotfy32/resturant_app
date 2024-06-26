import 'package:resturantapp/data/network/Failure.dart';
import 'package:resturantapp/data/network/Requests.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:dartz/dartz.dart';

abstract class Repositry {
  Future<Either<Failure, Authontication>> Login(LoginRequest loginRequest);
}
