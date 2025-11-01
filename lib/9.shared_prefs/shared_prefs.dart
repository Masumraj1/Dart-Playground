import 'package:shared_preferences/shared_preferences.dart';

//======================Data Save================
Future<void> userSaveRole(String role) async {
  final prefs = await SharedPreferences.getInstance();
  await prefs.setString("user_role", role);
}

//======================Data Get================

Future<void> getRole() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.getString("user_role");
}
//======================Data Remove(শুধু এই key remove হবে)================

Future<void> dataRemove() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove("user_role");
}
//======================Data Remove(সব data remove হবে)================

Future<void> dataClear() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.clear();
}

