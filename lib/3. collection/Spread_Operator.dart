// ===============================
// Dart Spread Operator (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Spread Operator কী?
  // ===============================
  /*
  🔹 Spread Operator হলো `...` symbol যা Dart এ collection এর elements অন্য collection এ add করার জন্য ব্যবহার করা হয়।
  🔹 এটা মূলত list, set, map merge বা copy করার জন্য খুবই convenient।
  */

  // ===============================
  // 2️⃣ Basic List Spread
  // ===============================
  List<int> list1 = [1, 2, 3];
  List<int> list2 = [0, ...list1, 4, 5];

  print(list2); // Output: [0, 1, 2, 3, 4, 5]

  // ===============================
  // 3️⃣ Conditional Spread (Null-aware spread)
  // ===============================
  /*
  কখনো কখনো list null হতে পারে, তখন `...?` ব্যবহার করা হয়
  */
  List<int>? nullableList;
  List<int> list3 = [100, ...?nullableList, 200];

  print(list3); // Output: [100, 200]

  // ===============================
  // 4️⃣ Spread in Set
  // ===============================
  Set<int> set1 = {1, 2, 3};
  Set<int> set2 = {0, ...set1, 4};

  print(set2); // Output: {0, 1, 2, 3, 4}  (Set auto removes duplicates)

  // ===============================
  // 5️⃣ Spread in Map
  // ===============================
  Map<String, int> map1 = {'a': 1, 'b': 2};
  Map<String, int> map2 = {'c': 3, ...map1};

  print(map2); // Output: {c: 3, a: 1, b: 2}

  // ===============================
  // 6️⃣ Combining Multiple Collections
  // ===============================
  List<int> listA = [1, 2];
  List<int> listB = [3, 4];
  List<int> combined = [0, ...listA, ...listB, 5];

  print(combined); // Output: [0, 1, 2, 3, 4, 5]

  // ===============================
  // 7️⃣ Nested Spread
  // ===============================
  List<List<int>> nestedList = [
    [1, 2],
    [3, 4]
  ];

  List<int> flatList = [0, ...nestedList.expand((x) => x)];
  print(flatList); // Output: [0, 1, 2, 3, 4]

  // ===============================
  // 8️⃣ Real-life Use Case
  // ===============================
  /*
  🔹 Default configuration merge করা যায়
  🔹 List বা Set combine করা যায়
  🔹 Map merge করা যায় without writing loops
  */

  List<String> defaultTasks = ['Task1', 'Task2'];
  List<String> userTasks = ['Task3', 'Task4'];
  List<String> allTasks = [...defaultTasks, ...userTasks];

  print(allTasks); // Output: [Task1, Task2, Task3, Task4]

  // ===============================
  // 9️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Spread Operator Summary:
  -----------------------------------------
  🔹 Symbol: ... (Spread)
  🔹 Null-aware: ...? (for nullable collections)
  🔹 Can be used with List, Set, Map
  🔹 Merge multiple collections easily
  🔹 Avoids manual loops for adding elements
  🔹 Maintains type safety
  🔹 Set automatically removes duplicates
  🔹 Ideal for default + user data merge, configuration, UI elements, etc.
  -----------------------------------------
  */
}
