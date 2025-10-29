// ======================
// Dart Map Master Guide (Bangla Explainer)
// ======================

void main() {
  // ======================
  // 1️⃣ Map কী?
  // ======================
  /*
  Map হলো key-value pair collection।
  প্রতিটি value এর জন্য একটি unique key থাকে।
  Dart এ Map object হিসেবে কাজ করে।
  */

  // Simple Map
  Map<String, int> scores = {
    'Alice': 90,
    'Bob': 85,
    'Rahim': 75,
  };
  print('Original Map: $scores');

  // ======================
  // 2️⃣ Map এ নতুন element যোগ করা
  // ======================
  scores['Karim'] = 95; // key দিয়ে assign
  print('After adding Karim: $scores');

  scores.addAll({'Rana': 80, 'Masum': 88}); // একাধিক element একসাথে
  print('After addAll: $scores');

  // ======================
  // 3️⃣ Map থেকে element মুছে ফেলা
  // ======================
  scores.remove('Bob'); // key দিয়ে remove
  print('After remove("Bob"): $scores');

  scores.removeWhere((key, value) => value < 80); // value দিয়ে remove
  print('After removeWhere value<80: $scores');

  scores.clear(); // সব element remove
  print('After clear(): $scores');

  // ======================
  // 4️⃣ Access Map element
  // ======================
  Map<String, int> marks = {
    'Masum': 90,
    'Rana': 85,
    'Rahim': 75,
  };
  print('Marks of Masum: ${marks['Masum']}'); // key দিয়ে access

  // ======================
  // 5️⃣ Looping through Map
  // ======================
  print('--- Loop through Map ---');
  marks.forEach((key, value) {
    print('$key scored $value');
  });

  // ======================
  // 6️⃣ Map properties
  // ======================
  print('Keys: ${marks.keys}'); // Iterable of keys
  print('Values: ${marks.values}'); // Iterable of values
  print('Length: ${marks.length}');
  print('Is empty? ${marks.isEmpty}');
  print('Is not empty? ${marks.isNotEmpty}');

  // ======================
  // 7️⃣ Searching in Map
  // ======================
  print('Contains key "Rana"? ${marks.containsKey('Rana')}');
  print('Contains value 90? ${marks.containsValue(90)}');

  // ======================
  // 8️⃣ Map Transform / update
  // ======================
  marks.update('Masum', (value) => value + 5); // existing key update
  print('After update Masum: $marks');

  marks.updateAll((key, value) => value + 2); // all key update
  print('After updateAll +2: $marks');

  // ======================
  // 9️⃣ Map filtering
  // ======================
  var highScores = marks.entries
      .where((entry) => entry.value >= 90)
      .map((entry) => MapEntry(entry.key, entry.value))
      .toList();
  print('High scores (>=90): $highScores');

  // ======================
  // 🔟 Map from Iterable
  // ======================
  List<String> students = ['Alice', 'Bob', 'Rahim'];
  var studentScores = Map.fromIterable(
    students,
    key: (item) => item,
    value: (item) => (item as String).length * 10, // demo value
  );
  print('Map from Iterable: $studentScores');

  // ======================
  // 1️⃣1️⃣ Nested Map
  // ======================
  Map<String, Map<String, int>> nestedMap = {
    'ClassA': {'Alice': 90, 'Bob': 85},
    'ClassB': {'Rahim': 75, 'Karim': 95},
  };
  print('Nested Map: $nestedMap');

  // Access nested element
  print('Score of Karim: ${nestedMap['ClassB']?['Karim']}');

  // ======================
  // 1️⃣2️⃣ Summary (সারসংক্ষেপ)
  // ======================
  /*
  🔹 Map = key-value pair collection
  🔹 add → map[key] = value, addAll()
  🔹 remove → remove(key), removeWhere()
  🔹 access → map[key]
  🔹 loop → forEach((key,value)), entries
  🔹 properties → keys, values, length, isEmpty
  🔹 search → containsKey(), containsValue()
  🔹 update → update(), updateAll()
  🔹 filter → entries.where(...)
  🔹 from Iterable → Map.fromIterable(list, key:, value:)
  🔹 nested Map → Map<String, Map<String,int>>
  */
}
