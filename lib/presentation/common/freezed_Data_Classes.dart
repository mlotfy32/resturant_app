import 'package:freezed_annotation/freezed_annotation.dart';
part 'freezed_Data_Classes.freezed.dart';

@freezed
class LogInObject with _$LogInObject {
  factory LogInObject(String email, String password) = _LogInObject;
}
