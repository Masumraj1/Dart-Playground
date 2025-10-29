// ======================
// Dart Data Types Master Guide (বাংলা ব্যাখ্যা সহ)
// ======================

void main() {
  // ======================
  // 1️⃣ Numbers (int & double)
  // ======================
  // int → পূর্ণ সংখ্যা, double → দশমিক সংখ্যা
  int age = 25;
  double height = 5.9;

  print('Age (int): $age');
  print('Height (double): $height');

  // Arithmetic operation
  int x = 10, y = 3;
  print('x + y = ${x + y}'); // 13
  print('x / y = ${x / y}'); // 3.3333

  // ======================
  // 2️⃣ String (পাঠ্য/লেখার ডাটা)
  // ======================
  String name = 'Masum';
  String greeting = "Hello, $name!";
  print('Name: $name');
  print(greeting);

  // Multiline string
  String multiline = '''
Hello,
This is
a multiline string
''';
  print(multiline);

  // ======================
  // 3️⃣ Boolean (true/false)
  // ======================
  bool isActive = true;
  bool isLoggedIn = false;
  print('Active? $isActive');
  print('Logged In? $isLoggedIn');

  // ======================
  // 4️⃣ List (Ordered collection)
  // ======================
  List<String> fruits = ['Apple', 'Banana', 'Mango'];
  print('Fruits List: $fruits');

  // Access element
  print('First fruit: ${fruits[0]}');

  // Add/Remove
  fruits.add('Orange');
  fruits.remove('Banana');
  print('Updated Fruits: $fruits');

  // ======================
  // 5️⃣ Set (Unique collection)
  // ======================
  Set<int> numbers = {1, 2, 3, 2, 1};
  print('Set: $numbers'); // {1,2,3} duplicates removed

  // ======================
  // 6️⃣ Map (Key-Value pair)
  // ======================
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};
  print('Scores Map: $scores');

  // Access by key
  print('Alice score: ${scores['Alice']}');

  // Add new entry
  scores['Charlie'] = 95;
  print('Updated Scores: $scores');

  // ======================
  // 7️⃣ Dynamic (যেকোনো type)
  // ======================
  dynamic value = 100;
  print('Dynamic value: $value');

  value = 'Hello Dart'; // type change allowed
  print('Dynamic value after change: $value');

  // ======================
  // 8️⃣ Object (Generic type)
  // ======================
  Object obj = 'I am object';
  print('Object: $obj');
  obj = 123; // type change allowed
  print('Object after change: $obj');

  // ======================
  // 9️⃣ Nullability (nullable & non-nullable)
  // ======================
  String? nullableName; // can be null
  print('Nullable Name: $nullableName'); // prints null

  nullableName = 'Masum';
  print('Nullable Name after assign: $nullableName');

  // Non-nullable (default)
  String nonNullableName = 'Rana';
  print('Non-nullable Name: $nonNullableName');

  // ======================
  // 🔹 Summary of all data types
  // ======================
  /*
  1. int → পূর্ণ সংখ্যা
  2. double → দশমিক সংখ্যা
  3. String → লেখা / পাঠ্য
  4. bool → true / false
  5. List → ordered collection
  6. Set → unique collection
  7. Map → key-value pair
  8. dynamic → যেকোনো type, runtime changeable
  9. Object → generic type
  10. Nullable → variable can be null
  */
}
