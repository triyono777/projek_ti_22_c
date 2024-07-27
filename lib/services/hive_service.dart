import 'package:hive/hive.dart';

class HiveService {
  final String boxName = 'loginBox';

  Future<void> saveUserId(String userId) async {
    var box = await Hive.openBox(boxName);
    await box.put('userId', userId);
  }

  Future<String?> getUserId() async {
    var box = await Hive.openBox(boxName);
    return box.get('userId');
  }

  Future<void> deleteUserId() async {
    var box = await Hive.openBox(boxName);
    await box.delete('userId');
  }
}
