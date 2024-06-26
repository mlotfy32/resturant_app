import 'package:resturantapp/app/constant.dart';
import 'package:resturantapp/app/extentions.dart';
import 'package:resturantapp/data/responses/responses.dart';
import 'package:resturantapp/domain/models.dart';

extension CustomerResponMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id.orZero() ?? Constant.zero,
        this?.name.orEmpty() ?? Constant.empty,
        this?.numperOfNotification.orZero() ?? Constant.zero);
  }
}

extension ContactResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.email.orEmpty() ?? Constant.empty,
        this?.link.orEmpty() ?? Constant.empty,
        this?.phone.orZero() ?? Constant.zero);
  }
}

extension AuthinticationResponseMapper on AuthonticationResponse? {
  Authontication toDomain() {
    return Authontication(this?.contacts.toDomain(), this?.customer.toDomain());
  }
}
