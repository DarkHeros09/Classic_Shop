// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get telephone => throw _privateConstructorUsedError;
  int get shoppingCartId => throw _privateConstructorUsedError;
  int get wishListId => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      int telephone,
      int shoppingCartId,
      int wishListId,
      String? password});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? telephone = null,
    Object? shoppingCartId = null,
    Object? wishListId = null,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as int,
      shoppingCartId: null == shoppingCartId
          ? _value.shoppingCartId
          : shoppingCartId // ignore: cast_nullable_to_non_nullable
              as int,
      wishListId: null == wishListId
          ? _value.wishListId
          : wishListId // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String username,
      String email,
      int telephone,
      int shoppingCartId,
      int wishListId,
      String? password});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? telephone = null,
    Object? shoppingCartId = null,
    Object? wishListId = null,
    Object? password = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      telephone: null == telephone
          ? _value.telephone
          : telephone // ignore: cast_nullable_to_non_nullable
              as int,
      shoppingCartId: null == shoppingCartId
          ? _value.shoppingCartId
          : shoppingCartId // ignore: cast_nullable_to_non_nullable
              as int,
      wishListId: null == wishListId
          ? _value.wishListId
          : wishListId // ignore: cast_nullable_to_non_nullable
              as int,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_User extends _User {
  const _$_User(
      {required this.id,
      required this.username,
      required this.email,
      required this.telephone,
      required this.shoppingCartId,
      required this.wishListId,
      this.password})
      : super._();

  @override
  final int id;
  @override
  final String username;
  @override
  final String email;
  @override
  final int telephone;
  @override
  final int shoppingCartId;
  @override
  final int wishListId;
  @override
  final String? password;

  @override
  String toString() {
    return 'User(id: $id, username: $username, email: $email, telephone: $telephone, shoppingCartId: $shoppingCartId, wishListId: $wishListId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.telephone, telephone) ||
                other.telephone == telephone) &&
            (identical(other.shoppingCartId, shoppingCartId) ||
                other.shoppingCartId == shoppingCartId) &&
            (identical(other.wishListId, wishListId) ||
                other.wishListId == wishListId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, username, email, telephone,
      shoppingCartId, wishListId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User extends User {
  const factory _User(
      {required final int id,
      required final String username,
      required final String email,
      required final int telephone,
      required final int shoppingCartId,
      required final int wishListId,
      final String? password}) = _$_User;
  const _User._() : super._();

  @override
  int get id;
  @override
  String get username;
  @override
  String get email;
  @override
  int get telephone;
  @override
  int get shoppingCartId;
  @override
  int get wishListId;
  @override
  String? get password;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
