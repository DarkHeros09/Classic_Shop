import 'package:classic_shop/src/features/core/data/user_dto.dart';

abstract class UserStorage {
  Future<UserDTO?> read();

  Future<void> save(UserDTO credentials);

  Future<void> clear();
}
