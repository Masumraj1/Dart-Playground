import 'package:shared_preferences/shared_preferences.dart';

//======================ডাটা সেভ করা================
Future<void> userSaveRole(String role) async {
  // SharedPreferences এর instance নেয়া
  final prefs = await SharedPreferences.getInstance();

  // "user_role" key দিয়ে role ডাটাটি স্টোর করা
  await prefs.setString("user_role", role);
}
// এই ফাংশন ব্যবহার করে আপনি ইউজারের রোল (যেমন: student, tutor ইত্যাদি) লোকাল ডিভাইসে সেভ করতে পারবেন।

//======================ডাটা রিড / পাওয়া================
Future<void> getRole() async {
  // SharedPreferences এর instance নেয়া
  final prefs = await SharedPreferences.getInstance();

  // "user_role" key থেকে ডাটা পড়া
  prefs.getString("user_role");
}
// এই ফাংশন ব্যবহার করে আপনি আগে সেভ করা ইউজারের রোল পড়ে নিতে পারবেন।
// লক্ষ্য: এই ফাংশনটি বর্তমানে কোনো মান রিটার্ন করছে না। মান রিটার্ন করতে হলে Future<String?> হতে হবে।


//======================নির্দিষ্ট key মুছে ফেলা================
Future<void> dataRemove() async {
  // SharedPreferences এর instance নেয়া
  final prefs = await SharedPreferences.getInstance();

  // শুধুমাত্র "user_role" key এর ডাটা মুছে ফেলা
  prefs.remove("user_role");
}
// এই ফাংশন ব্যবহার করলে শুধু ইউজারের রোল ডাটাটি মুছে যাবে, অন্যান্য ডাটা অক্ষত থাকবে।

//======================সব ডাটা মুছে ফেলা================
Future<void> dataClear() async {
  // SharedPreferences এর instance নেয়া
  final prefs = await SharedPreferences.getInstance();

  // ডিভাইসে থাকা সব SharedPreferences ডাটা মুছে ফেলা
  prefs.clear();
}
// এই ফাংশন ব্যবহার করলে সমস্ত লোকাল ডাটা (যেমন ইউজারের রোল, সেটিংস ইত্যাদি) মুছে যাবে।
