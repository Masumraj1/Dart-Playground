// ======================
// Dart List Master Guide (Bangla Explainer)
// ======================

void main() {
  // ======================
  // 1️⃣ List কী?
  // ======================
  /*
  List হলো ordered collection of items।
  একে array ও বলা যায়।
  List এর element index-based access করা যায়, এবং duplicate allowed।
  */

  // Simple list
  List<String> names = ['Masum', 'Rana', 'Rahim'];
  print('Original List: $names');

  // ======================
  // 2️⃣ List এ নতুন item যোগ করা
  // ======================
  // add() → list এর শেষের দিকে যোগ করে
  names.add('Karim');
  print('After adding: $names');

  // insert() → নির্দিষ্ট index এ যোগ করা
  names.insert(1, 'Rafi');
  print('After insert at index 1: $names');

  // addAll() → একাধিক item একসাথে যোগ করা
  names.addAll(['Asha', 'Babu']);
  print('After addAll: $names');

  // ======================
  // 3️⃣ List থেকে item মুছে ফেলা
  // ======================
  // remove() → value দিয়ে remove
  names.remove('Rana');
  print('After remove("Rana"): $names');

  // removeAt() → index দিয়ে remove
  names.removeAt(0);
  print('After removeAt(0): $names');

  // removeLast() → last element remove
  names.removeLast();
  print('After removeLast(): $names');

  // clear() → সব element remove
  // names.clear();
  // print('After clear(): $names');

  // ======================
  // 4️⃣ Access List element
  // ======================
  print('First element: ${names[0]}');
  print('Last element: ${names[names.length - 1]}');

  // ======================
  // 5️⃣ Looping / Iteration
  // ======================
  print('--- Using for loop ---');
  for (int i = 0; i < names.length; i++) {
    print('Hello, ${names[i]}!');
  }

  print('--- Using for-in loop ---');
  for (var name in names) {
    print('Hi, $name!');
  }

  print('--- Using forEach ---');
  names.forEach((name) => print('Hey, $name!'));

  // ======================
  // 6️⃣ List properties
  // ======================
  print('Length of list: ${names.length}');
  print('Is list empty? ${names.isEmpty}');
  print('Is list not empty? ${names.isNotEmpty}');

  // ======================
  // 7️⃣ Searching in List
  // ======================
  print('Contains "Rafi"? ${names.contains('Rafi')}');
  print('Index of "Rahim": ${names.indexOf('Rahim')}');

  // ======================
  // 8️⃣ Sorting
  // ======================
  List<int> numbers = [5, 2, 9, 1, 7];
  numbers.sort(); // ascending
  print('Sorted numbers ascending: $numbers');

  numbers.sort((a, b) => b - a); // descending
  print('Sorted numbers descending: $numbers');

  // ======================
  // 9️⃣ Map / Transform
  // ======================
  var upperNames = names.map((name) => name.toUpperCase()).toList();
  print('Uppercase names: $upperNames');

  // ======================
  // 🔟 Filter / Where
  // ======================
  var longNames = names.where((name) => name.length > 3).toList();
  print('Names with length > 3: $longNames');

  // ======================
  // 1️⃣1️⃣ Spread Operator / List Merge
  // ======================
  List<String> moreNames = ['Asha', ...names];
  print('Merged List using spread: $moreNames');

  // ======================
  // 1️⃣2️⃣ Sublist
  // ======================
  List<String> subNames = names.sublist(0, 2); // index 0 to 1
  print('Sublist: $subNames');

  // ======================
  // 1️⃣3️⃣ List from Iterable / generate
  // ======================
  List<int> squares = List.generate(5, (index) => (index + 1) * (index + 1));
  print('Squares List: $squares');

  // ======================
  // 1️⃣4️⃣ Combine / Join
  // ======================
  String joinedNames = names.join(', ');
  print('Joined names: $joinedNames');

  // ======================
  // 1️⃣5️⃣ Summary (সারসংক্ষেপ)
  // ======================
  /*
  🔹 List = ordered collection
  🔹 add(), insert(), addAll() → নতুন element যোগ করা
  🔹 remove(), removeAt(), removeLast(), clear() → element মুছে ফেলা
  🔹 Access → names[index]
  🔹 Loop → for, for-in, forEach
  🔹 Properties → length, isEmpty, isNotEmpty
  🔹 Search → contains(), indexOf()
  🔹 Sort → sort(), custom compare
  🔹 Transform → map()
  🔹 Filter → where()
  🔹 Merge → spread operator (...)
  🔹 Sublist → sublist(start, end)
  🔹 Generate → List.generate()
  🔹 Join → join(', ')
  */
}
