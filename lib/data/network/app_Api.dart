import 'package:dio/dio.dart';
import 'package:resturantapp/app/constant.dart';
import 'package:resturantapp/data/responses/responses.dart';
import 'package:retrofit/http.dart';
part 'app_Api.g.dart';

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServicesClint {
  factory AppServicesClint(Dio dio, {String baseUrl}) = _AppServicesClint;
  @POST('/customer/logIn')
  Future<AuthonticationResponse> login(
      @Field("email") String email, @Field("pass") String pass);
}
