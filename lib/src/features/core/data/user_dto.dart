import 'package:classic_shop/src/features/core/domain/user.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    required final int id,
    required final String username,
    required final String email,
    // required final int telephone,
    required final bool? isBlocked,
    required final bool? isEmailVerified,
    @JsonKey(name: 'cart_id') required final int? shoppingCartId,
    @JsonKey(name: 'wish_id') required final int? wishListId,
  }) = _UserDTO;
  const UserDTO._();

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  factory UserDTO.fromDomain(User _) {
    return UserDTO(
      id: _.id,
      username: _.username,
      email: _.email,
      // telephone: _.telephone,
      shoppingCartId: _.shoppingCartId,
      wishListId: _.wishListId,
      isBlocked: _.isBlocked,
      isEmailVerified: _.isEmailVerified,
    );
  }

  User toDomain() {
    return User(
      id: id,
      username: username,
      email: email,
      // telephone: telephone,
      shoppingCartId: shoppingCartId,
      wishListId: wishListId,
      isBlocked: isBlocked,
      isEmailVerified: isEmailVerified,
    );
  }
}
