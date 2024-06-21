import 'package:classic_shop/src/features/auth/data/credentials_dto.dart';

abstract class CredentialsStorage {
  Future<CredentialsDTO?> read();

  Future<void> save(CredentialsDTO credentialsDTO);

  Future<void> clear();
}
// abstract class CredentialsStorage {
//   Future<TokenDTO?> read();

//   Future<void> save(TokenDTO token);

//   Future<void> clear();
// }
