// ======================
// Dart Variables Master Guide
// ======================

void main() {
  // ======================
  // 1️⃣ var: Type inference + mutable
  // ======================
  var name = 'Masum'; // String inferred
  print('Name: $name');

  name = 'Rana'; // Value change করা যায়
  print('Updated Name: $name');

  var age = 25; // int inferred
  age = 30;
  print('Updated Age: $age');

  // ======================
  // 2️⃣ final: immutable variable
  // ======================
  final String country = 'Bangladesh';
  print('Country: $country');
  // country = 'India'; ❌ Error

  // ======================
  // 3️⃣ const: compile-time constant
  // ======================
  const double pi = 3.141592;
  print('Pi: $pi');
  // pi = 3.14; ❌ Error

  // ======================
  // 4️⃣ dynamic: runtime type change possible
  // ======================
  dynamic value = 'Hello';
  print('Dynamic value: $value');

  value = 100; // type changed from String → int
  print('Dynamic value after change: $value');

  // ======================
  // 5️⃣ Object type variable
  // ======================
  Object obj = 'I am an object';
  print('Object: $obj');
  obj = 42; // allowed
  print('Object after change: $obj');

  // ======================
  // 6️⃣ Type-specified variable
  // ======================
  String city = 'Dhaka';
  int year = 2025;
  bool isActive = true;
  double salary = 12345.67;

  print('City: $city, Year: $year, Active: $isActive, Salary: $salary');

  // ======================
  // 7️⃣ Nullable & Non-nullable variables
  // ======================
  String? nullableName; // can be null
  print('Nullable Name: $nullableName'); // prints null

  nullableName = 'Masum';
  print('Nullable Name after assign: $nullableName');

  // Non-nullable (default)
  // String nonNullable; ❌ Error: must be initialized

  // ======================
  // 8️⃣ Late variables
  // ======================
  late String lateName; // initialization later
  lateName = 'Rana';
  print('Late variable: $lateName');

  // ======================
  // 9️⃣ Const Collections
  // ======================
  const List<int> numbers = [1, 2, 3];
  print('Const List: $numbers');
  // numbers.add(4); ❌ Error, cannot modify const list

  // ======================
  // 🔹 Summary of variable types
  // ======================
  /*
    1. var       → mutable, type inferred
    2. final     → immutable, runtime assign once
    3. const     → compile-time constant, immutable
    4. dynamic   → type can change at runtime
    5. Object    → generic object, type can be anything
    6. Type-specified → recommended for production
    7. nullable (?) → can hold null
    8. late      → assign later, non-nullable
    9. Const collections → immutable lists, maps, sets
  */
}
