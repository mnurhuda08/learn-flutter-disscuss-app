import 'package:flutter/foundation.dart';

import '../models/user.dart';
import '../sources/follow_source.dart';

class CFollower extends ChangeNotifier {
  List<Users> _follower = [];
  List<Users> get follower => _follower;
  setFollower(String idUser) async {
    _follower = await FollowSource.readFollower(idUser);
    notifyListeners();
  }
}
