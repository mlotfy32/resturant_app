// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_Data_Classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogInObject {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogInObjectCopyWith<LogInObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogInObjectCopyWith<$Res> {
  factory $LogInObjectCopyWith(
          LogInObject value, $Res Function(LogInObject) then) =
      _$LogInObjectCopyWithImpl<$Res, LogInObject>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$LogInObjectCopyWithImpl<$Res, $Val extends LogInObject>
    implements $LogInObjectCopyWith<$Res> {
  _$LogInObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogInObjectImplCopyWith<$Res>
    implements $LogInObjectCopyWith<$Res> {
  factory _$$LogInObjectImplCopyWith(
          _$LogInObjectImpl value, $Res Function(_$LogInObjectImpl) then) =
      __$$LogInObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LogInObjectImplCopyWithImpl<$Res>
    extends _$LogInObjectCopyWithImpl<$Res, _$LogInObjectImpl>
    implements _$$LogInObjectImplCopyWith<$Res> {
  __$$LogInObjectImplCopyWithImpl(
      _$LogInObjectImpl _value, $Res Function(_$LogInObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LogInObjectImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LogInObjectImpl implements _LogInObject {
  _$LogInObjectImpl(this.email, this.password);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LogInObject(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogInObjectImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogInObjectImplCopyWith<_$LogInObjectImpl> get copyWith =>
      __$$LogInObjectImplCopyWithImpl<_$LogInObjectImpl>(this, _$identity);
}

abstract class _LogInObject implements LogInObject {
  factory _LogInObject(final String email, final String password) =
      _$LogInObjectImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$LogInObjectImplCopyWith<_$LogInObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
