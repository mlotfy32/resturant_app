import 'package:dartz/dartz.dart';
import 'package:resturantapp/data/data_source/remote_datea_source.dart';
import 'package:resturantapp/data/mapper/mapper.dart';
import 'package:resturantapp/data/network/Failure.dart';
import 'package:resturantapp/data/network/Requests.dart';
import 'package:resturantapp/data/network/network_Info.dart';
import 'package:resturantapp/domain/models.dart';
import 'package:resturantapp/domain/repository/repository.dart';

class RepositoryImp implements Repositry {
  final NetworkInfo _networkConnection;
  final RemoteDateaSource _remoteDataSource;
  RepositoryImp(this._networkConnection, this._remoteDataSource);
  @override
  Future<Either<Failure, Authontication>> Login(
      LoginRequest loginRequest) async {
    if (await _networkConnection.isConnection) {
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        return Right(response.toDomain());
      } else {
        return left(Failure(409, response.message ?? 'business error message'));
      }
    } else {
        return left(Failure(409, 'please check your internet connection'));

    }
  }
}
