// ===============================
// Dart Null-aware Collections (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Null-aware Collections কী?
  // ===============================
  /*
  🔹 কখনো কখনো collection (List, Set, Map) null হতে পারে।
  🔹 Null-aware collections দিয়ে আমরা null values safe ভাবে handle করতে পারি।
  🔹 Dart এ Null-aware operator ব্যবহার করা হয় `...?` বা `?? []` / `?? {}` ইত্যাদি।
  */

  // ===============================
  // 2️⃣ Null-aware Spread Operator (...?)
  // ===============================
  List<int>? nullableList;

  List<int> list1 = [1, 2, ...?nullableList, 3];
  print(list1); // Output: [1, 2, 3]

  // ===============================
  // 3️⃣ Default value using ?? operator
  // ===============================
  List<int>? nullableList2;
  List<int> list2 = nullableList2 ?? [0];
  print(list2); // Output: [0]

  Map<String, int>? nullableMap;
  Map<String, int> map1 = nullableMap ?? {'default': 1};
  print(map1); // Output: {default: 1}

  // ===============================
  // 4️⃣ Null-aware in Sets
  // ===============================
  Set<int>? nullableSet;
  Set<int> set1 = {...?nullableSet, 5, 10};
  print(set1); // Output: {5, 10}

  // ===============================
  // 5️⃣ Combining multiple nullable collections
  // ===============================
  List<int>? a = [1, 2];
  List<int>? b;
  List<int>? c = [5, 6];

  List<int> combined = [...?a, ...?b, ...?c];
  print(combined); // Output: [1, 2, 5, 6]

  // ===============================
  // 6️⃣ Real-life Use Case
  // ===============================
  /*
  🔹 API response থেকে nullable list/map আসতে পারে
  🔹 Null-aware collection দিয়ে safe merge করা যায়
  🔹 Default value দেওয়া যায় without writing if-checks
  */
  List<String>? apiTasks;
  List<String> tasks = ['DefaultTask', ...?apiTasks];
  print(tasks); // Output: [DefaultTask]

  // ===============================
  // 7️⃣ Null-aware with Map
  // ===============================
  Map<String, int>? apiMap;
  Map<String, int> defaultMap = {'a': 1, 'b': 2, ...?apiMap};
  print(defaultMap); // Output: {a: 1, b: 2}

  // ===============================
  // 8️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Null-aware Collections Summary:
  -----------------------------------------
  🔹 Null-aware spread: ...? (for List, Set, Map)
  🔹 Null-aware default value: ?? operator
  🔹 Safe merging of nullable collections
  🔹 Ideal for API responses / optional data
  🔹 Avoids runtime null errors
  🔹 Works with List, Set, Map
  🔹 Can combine multiple nullable collections safely
  -----------------------------------------
  */
}
