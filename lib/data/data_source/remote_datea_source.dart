import 'package:resturantapp/data/network/Requests.dart';
import 'package:resturantapp/data/network/app_Api.dart';
import 'package:resturantapp/data/responses/responses.dart';

abstract class RemoteDateaSource {
  Future<AuthonticationResponse> login(LoginRequest loginRequest);
}

class RemoteDateaSourceImpl implements RemoteDateaSource {
  final AppServicesClint _appServicesClint;
  RemoteDateaSourceImpl(this._appServicesClint);
  @override
  Future<AuthonticationResponse> login(LoginRequest loginRequest) async{
    return await _appServicesClint.login(loginRequest.email, loginRequest.password);
  }
}
