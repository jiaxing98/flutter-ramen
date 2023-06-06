import 'package:lb_flutter_utilities/app/service_collection.dart';

LocalStorage localStorage = sl.get<LocalStorage>();

class LocalStorage {
  final String _accessKey = "jwt";

  Future<String> getAccessToken() async {
    return await services.storage.readString(_accessKey, defaultVal: "");
  }

  Future setAccessToken(String token) async {
    await services.storage.saveString(_accessKey, token);
  }

  Future removeAccessToken() async {
    await services.storage.deleteKey(_accessKey);
  }
}
