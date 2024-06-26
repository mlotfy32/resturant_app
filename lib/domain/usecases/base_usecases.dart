import 'package:dartz/dartz.dart';
import 'package:resturantapp/data/network/Failure.dart';

abstract class BaseUsecases<In, Out> {
  Future<Either<Failure, Out>> excute(In input);
}
