import 'package:clean_architechture/data/utils/shared_pref_manager.dart';

import 'di/injection.dart';

class SessionUtils {
  static void saveAccessToken(String accessToken) => getIt.get<SharedPreferencesManager>().putString(
        SharedPreferenceKey.keyAccessToken,
        accessToken,
      );

// void saveUser(UserModel user) async {
//   await getIt
//       .get<SharedPreferencesManager>()
//       .putString(SharedPreferenceKey.keyUser, jsonEncode(user.toJson()));
// }

// Future<UserModel> getCurrentUser() async {
//   final userFromString = getIt.get<SharedPreferencesManager>().getString(SharedPreferenceKey.keyUser) ?? '{}';
//   final Map<String, dynamic>? userMap = json.decode(userFromString);
//   return UserModel.fromJson(userMap!);
// }

}
