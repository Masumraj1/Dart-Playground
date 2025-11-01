import 'package:hive_flutter/hive_flutter.dart';

//======================Hive Initialize / Setup================
Future<void> initHive() async {
// Hive setup করা Flutter অ্যাপের জন্য
await Hive.initFlutter(); // Hive কে Flutter compatible বানানো

// একটি Box খোলা (Box হলো Hive এর ডাটাবেসের container)
await Hive.openBox('myBox');
}
// এই ফাংশন main() এর আগে কল করতে হবে।
// উদাহরণ: void main() async { await initHive(); runApp(MyApp()); }

//======================ডাটা সেভ করা================
Future<void> saveUserRole(String role) async {
// Box খোলা
var box = Hive.box('myBox');

// "user_role" key দিয়ে ডাটা সেভ করা
box.put('user_role', role);
}
// এই ফাংশন ব্যবহার করে তুমি ইউজারের রোল (student, tutor ইত্যাদি) সেভ করতে পারবে।

//======================ডাটা রিড / পাওয়া================
String? getUserRole() {
// Box খোলা
var box = Hive.box('myBox');

// "user_role" key থেকে ডাটা পড়া
return box.get('user_role');
}
// এই ফাংশন ব্যবহার করলে আগে সেভ করা ইউজারের রোল পড়ে নেওয়া যাবে।
// যদি key না থাকে তাহলে null রিটার্ন করবে।

//======================নির্দিষ্ট key মুছে ফেলা================
Future<void> removeUserRole() async {
// Box খোলা
var box = Hive.box('myBox');

// শুধু "user_role" key মুছে ফেলা
box.delete('user_role');
}
// এই ফাংশন ব্যবহার করলে শুধু user_role key-এর ডাটা মুছে যাবে।
// অন্যান্য ডাটা অক্ষত থাকবে।

//======================সব ডাটা মুছে ফেলা================
Future<void> clearAllData() async {
// Box খোলা
var box = Hive.box('myBox');

// Box-এর সব ডাটা মুছে ফেলা
box.clear();
}
// এই ফাংশন ব্যবহার করলে Box-এর সব ডাটা মুছে যাবে।
