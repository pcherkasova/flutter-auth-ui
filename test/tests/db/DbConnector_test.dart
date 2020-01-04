import 'package:faui/src/10_data/db_access.dart';
import 'package:faui/src/90_model/faui_user.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

import '../../test_util/AuthUtil.dart';

final uuid = new Uuid();

void main() {
  FauiUser user;
  setUp(() async {
    user = await AuthUtil.signIn();
  });

  tearDown(() async {
    await AuthUtil.deleteUser(user);
  });

  test('Write and read', () async {
    String doc = 'doc1';
    String key = 'profile.name';
    String value1 = 'value of the field';

//    await DbAccess.save(
//      Config.db,
//
//      docId: doc,
//      key: key,
//      value: value1,
//      user: user,
//    );
//
//    String value2 = await DbAccess.load(
//      db: Config.db,
//      user: user,
//      docId: doc,
//      key: key,
//    );

//    expect(value2, value1);
  });

//  test('Get non-existing key', () async {
//    String doc = 'doc1';
//    String key = 'non-existing-key';
//    var value = await DbAccess.load(
//      db: Config.db,
//      user: user,
//      docId: doc,
//      key: key,
//    );
//
//    expect(value, null);
//  });
}
