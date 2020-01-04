import 'package:faui/src/10_auth/auth_connector.dart';
import 'package:faui/src/90_model/faui_user.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import 'Config.dart';

final uuid = new Uuid();

class AuthUtil {
  static Future<FauiUser> signIn() async {
    final String id = uuid.v4();
    final String email = "_test_$id@fakedomain.com";

    await AuthConnector.registerUser(
        apiKey: Config.db.apiKey, email: email, password: id);

    FauiUser user = await AuthConnector.signInUser(
        apiKey: Config.db.apiKey, email: email, password: id);

    expect(user.userId == null, false);
    expect(user.email, email);
    expect(user.token == null, false);

    return user;
  }

  static Future<void> deleteUser(FauiUser u) async {
    await AuthConnector.deleteUserIfExists(
        apiKey: Config.db.apiKey, idToken: u.token);
  }
}
