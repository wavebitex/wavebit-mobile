import 'dart:async';

import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wavebitex/data/auth/model/user.dart';
import 'package:wavebitex/data/auth/model/userAdapter.dart';
import 'package:wavebitex/utils/constants.dart';

class Dao {
  static const String userObject = "userObject";
  var box;

  FutureOr initializeHive() async {
    Hive.init((await getApplicationDocumentsDirectory()).path);
  }

  FutureOr registerUserAdapter() async {
    Hive.registerAdapter(UserAdapter());
  }

  Future openWavebitBox() async {
    if (!Hive.isBoxOpen(Constants.WWVEGIT_BOX)) {
      await initializeHive();
      await registerUserAdapter();
    }

    box = await Hive.openBox(Constants.WWVEGIT_BOX);
  }

  Future saveUserObj(User user) async {
    try {
      await openWavebitBox();
      await box.put(userObject, user);
    } catch (e) {
      print("Dao Error saving userObj========> $e");
    }
  }

  Future<User?> getUserObj() async {
    try {
      await openWavebitBox();
      return await box.get(userObject);
    } catch (e) {
      print("Dao Error getting userObj========> $e");
    }
    return null;
  }

  Future<void> deleteuserObj() async {
    await openWavebitBox();
    await box.delete(userObject);
  }
}
