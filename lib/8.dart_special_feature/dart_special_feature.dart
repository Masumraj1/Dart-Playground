// ===============================
// Dart Special Features (Bangla Explainer)
// ===============================

// 1️⃣ Const Constructor → Immutable Object
// 🔹 Const constructor দ্বারা তৈরি object immutable হয়। একবার তৈরি হলে state পরিবর্তন করা যায় না।
class Point {
  final int x;
  final int y;
  const Point(this.x, this.y);
}

// 2️⃣ Extension Methods → Existing Class এ নতুন Method যোগ
// 🔹 Dart 2.7+ থেকে support। String class এ greet() method যোগ করা হলো।
extension StringExtension on String {
  String greet() => 'Hello, $this!';
}

void main() {
  // ===============================
  // 1️⃣ Const Constructor ব্যবহার
  // ===============================
  const p1 = Point(1, 2);
  const p2 = Point(1, 2);

  print(identical(p1, p2)); // Output: true (একই instance, immutable)

  // ===============================
  // 2️⃣ Late Variable → Lazy Initialization
  // ===============================
  // 🔹 Late keyword দ্বারা variable তখন initialize হয় যখন access করা হয়
  late int x;
  x = 10;
  print(x); // Output: 10

  late String city;
  city = 'Dhaka';
  print(city); // Output: Dhaka

  // ===============================
  // 3️⃣ Type Inference → Compiler automatically type deduce করে
  // ===============================
  var name = 'Masum'; // String ধরা হয়েছে
  var age = 25;       // int ধরা হয়েছে
  var isActive = true; // bool inferred
  print('$name, $age, Active: $isActive'); // Output: Masum, 25, Active: true

  // ===============================
  // 4️⃣ Extension Method ব্যবহার
  // ===============================
  print('Masum'.greet()); // Output: Hello, Masum!

  // ===============================
  // 5️⃣ Generics → Type-safe Reusable Code
  // ===============================
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  Map<String, int> scores = {'Math': 90, 'English': 85};

  print(fruits); // Output: [Apple, Banana, Orange]
  print(scores); // Output: {Math: 90, English: 85}

  // Custom Generic Function
  T getFirst<T>(List<T> items) {
    return items.first;
  }

  print(getFirst<int>([10, 20, 30]));     // Output: 10
  print(getFirst<String>(['A', 'B', 'C'])); // Output: A

  // ===============================
  // 6️⃣ Null-aware operators Example (Bonus)
  // ===============================
  String? userName;
  String displayName = userName ?? 'Guest';
  print(displayName); // Output: Guest

  int? count;
  count ??= 5; // count যদি null হয় তাহলে 5 assign হবে
  print(count); // Output: 5

  // ===============================
  // 7️⃣ Real-life Use Cases
  // ===============================
  /*
  🔹 const constructors → compile-time immutable objects, optimization
  🔹 late → lazy initialization, expensive computation defer করা যায়
  🔹 type inference → clean code, কম boilerplate
  🔹 extension methods → custom utilities, readable code
  🔹 generics → reusable widgets, type-safe collections
  🔹 null-aware operators → safe value handling
  */

  // ===============================
  // 8️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Special Features Summary:
  -----------------------------------------
  🔹 const constructor → immutable object (পরিবর্তন করা যায় না)
  🔹 late variable → lazy initialization
  🔹 type inference → compiler automatically type deduce করে
  🔹 extension methods → existing class এ নতুন method যোগ
  🔹 generics → type-safe reusable code
  🔹 null-aware operators (??, ??=, !, ?.) → safe null handling
  🔹 Clean, efficient, safe এবং reusable Dart code
  -----------------------------------------
  */
}
