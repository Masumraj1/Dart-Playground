// ======================
// Dart Operators Master Guide (বাংলা ব্যাখ্যা সহ)
// ======================

void main() {
  // ======================
  // 1️⃣ Arithmetic Operators (গাণিতিক অপারেটর)
  // ======================
  // ব্যবহার: সংখ্যা নিয়ে যোগ, বিয়োগ, গুণ, ভাগ ইত্যাদি।
  int a = 10;
  int b = 3;

  print('a = $a, b = $b');

  print('Addition: a + b = ${a + b}');       // 13
  print('Subtraction: a - b = ${a - b}');    // 7
  print('Multiplication: a * b = ${a * b}'); // 30
  print('Division: a / b = ${a / b}');       // 3.3333
  print('Integer Division: a ~/ b = ${a ~/ b}'); // 3
  print('Modulo: a % b = ${a % b}');         // 1

  // ======================
  // 2️⃣ Assignment Operators (অ্যাসাইনমেন্ট অপারেটর)
  // ======================
  // ব্যবহার: variable update করার জন্য
  int c = 5;
  print('Initial c = $c');

  c += 3; // c = c + 3
  print('c += 3 → $c');

  c -= 2; // c = c - 2
  print('c -= 2 → $c');

  c *= 2; // c = c * 2
  print('c *= 2 → $c');

  c ~/= 3; // c = c ~/ 3
  print('c ~/= 3 → $c');

  c %= 3; // c = c % 3
  print('c %= 3 → $c');

  // ======================
  // 3️⃣ Comparison Operators (তুলনামূলক অপারেটর)
  // ======================
  // ব্যবহার: দুইটি মানের মধ্যে তুলনা করতে
  int x = 10, y = 20;

  print('x == y → ${x == y}'); // false
  print('x != y → ${x != y}'); // true
  print('x > y → ${x > y}');   // false
  print('x < y → ${x < y}');   // true
  print('x >= y → ${x >= y}'); // false
  print('x <= y → ${x <= y}'); // true

  // ======================
  // 4️⃣ Logical Operators (লজিক্যাল অপারেটর)
  // ======================
  // ব্যবহার: boolean মানের logical operation এর জন্য
  bool p = true;
  bool q = false;

  print('p && q → ${p && q}'); // false
  print('p || q → ${p || q}'); // true
  print('!p → ${!p}');         // false

  // ======================
  // 5️⃣ Type Test Operators (টাইপ পরীক্ষা)
  // ======================
  // ব্যবহার: variable কোন ধরনের তা পরীক্ষা করতে
  var value = 100;

  print('value is int → ${value is int}');       // true
  print('value is! String → ${value is! String}'); // true

  // ======================
  // 6️⃣ Conditional / Ternary Operator (শর্ত ভিত্তিক)
  // ======================
  // ব্যবহার: inline if-else
  int score = 85;
  String result = (score >= 50) ? 'Pass' : 'Fail';
  print('Result: $result');

  // ======================
  // 7️⃣ Null-aware Operators (নাল-সুরক্ষা অপারেটর)
  // ======================
  // ব্যবহার: null safe কোড লিখতে
  String? name;
  print('Name ?? "Guest" → ${name ?? "Guest"}'); // Guest

  name ??= 'Masum'; // যদি null → assign
  print('After ??= → $name');

  // ======================
  // 8️⃣ Cascade Operator (..)
  // ======================
  // ব্যবহার: object এর multiple method/field call এক লাইনে
  var buffer = StringBuffer();
  buffer
    ..write('Hello')
    ..write(' ')
    ..write('Dart!');
  print('Cascade Operator: ${buffer.toString()}');

  // ======================
  // 9️⃣ Bitwise Operators (বিট অপারেটর)
  // ======================
  // ব্যবহার: binary level operation
  int m = 5;  // 0101
  int n = 3;  // 0011

  print('m & n → ${m & n}');   // 1  (0101 & 0011 = 0001)
  print('m | n → ${m | n}');   // 7  (0101 | 0011 = 0111)
  print('m ^ n → ${m ^ n}');   // 6  (0101 ^ 0011 = 0110)
  print('~m → ${~m}');         // -6 (bitwise NOT)
  print('m << 1 → ${m << 1}'); // 10 (shift left)
  print('m >> 1 → ${m >> 1}'); // 2  (shift right)

  // ======================
  // 🔹 Summary of all operators (সারসংক্ষেপ)
  // ======================
  /*
  1. Arithmetic → +, -, *, /, ~/ , %  (গাণিতিক)
  2. Assignment → =, +=, -=, *=, /=, ~/=, %= (value update)
  3. Comparison → ==, !=, >, <, >=, <= (তুলনা)
  4. Logical → &&, ||, ! (Boolean logic)
  5. Type test → is, is! (টাইপ পরীক্ষা)
  6. Conditional → condition ? expr1 : expr2 (inline if-else)
  7. Null-aware → ??, ??=, ?. (null safe code)
  8. Cascade → .. (একাধিক method এক লাইনে)
  9. Bitwise → &, |, ^, ~, <<, >> (binary operation)
  */
}
