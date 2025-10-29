// ======================
// Dart Set Master Guide (Bangla Explainer)
// ======================

void main() {
  // ======================
  // 1️⃣ Set কী?
  // ======================
  /*
  Set হলো unordered collection of unique items।
  একে mathematical set এর মত মনে করা যায়।
  Dart এ Set object হিসেবে কাজ করে।
  List এর মত duplicate value allowed নয়।
  */

  // Simple Set
  Set<String> fruits = {'Apple', 'Banana', 'Mango'};
  print('Original Set: $fruits');

  // ======================
  // 2️⃣ Set এ নতুন item যোগ করা
  // ======================
  fruits.add('Orange'); // একক element যোগ
  print('After add: $fruits');

  fruits.addAll(['Grapes', 'Pineapple']); // একাধিক element যোগ
  print('After addAll: $fruits');

  // ======================
  // 3️⃣ Set থেকে item মুছে ফেলা
  // ======================
  fruits.remove('Banana'); // value দিয়ে remove
  print('After remove("Banana"): $fruits');

  fruits.removeWhere((fruit) => fruit.startsWith('P')); // condition অনুযায়ী remove
  print('After removeWhere startsWith "P": $fruits');

  fruits.clear(); // সব item remove
  print('After clear(): $fruits');

  // ======================
  // 4️⃣ Access Set element
  // ======================
  Set<int> numbers = {1, 2, 3, 4, 5};
  print('Numbers Set: $numbers');

  // direct index access নেই, তবে iteration দিয়ে access করা যায়
  for (var num in numbers) {
    print('Number: $num');
  }

  // ======================
  // 5️⃣ Set properties
  // ======================
  print('Length: ${numbers.length}');
  print('Is empty? ${numbers.isEmpty}');
  print('Is not empty? ${numbers.isNotEmpty}');

  // ======================
  // 6️⃣ Searching in Set
  // ======================
  print('Contains 3? ${numbers.contains(3)}');
  print('Contains 10? ${numbers.contains(10)}');

  // ======================
  // 7️⃣ Set Operations (Math set operations)
  // ======================
  Set<int> setA = {1, 2, 3};
  Set<int> setB = {3, 4, 5};

  print('Set A: $setA');
  print('Set B: $setB');

  // Union → সব element merge
  print('Union: ${setA.union(setB)}'); // {1,2,3,4,5}

  // Intersection → common element
  print('Intersection: ${setA.intersection(setB)}'); // {3}

  // Difference → A-B
  print('Difference (A-B): ${setA.difference(setB)}'); // {1,2}

  // ======================
  // 8️⃣ Convert List to Set
  // ======================
  List<int> listNumbers = [1, 2, 2, 3, 3, 4];
  Set<int> uniqueNumbers = listNumbers.toSet();
  print('Unique Numbers from List: $uniqueNumbers');

  // ======================
  // 9️⃣ Spread Operator {...} for Sets
  // ======================
  Set<int> setC = {10, 20};
  Set<int> mergedSet = {...setA, ...setC};
  print('Merged Set: $mergedSet'); // {1,2,3,10,20}

  // ======================
  // 🔟 Summary (সারসংক্ষেপ)
  // ======================
  /*
  🔹 Set = unordered, unique collection
  🔹 add() → এক element যোগ করা
  🔹 addAll() → একাধিক element যোগ করা
  🔹 remove() → value দিয়ে remove
  🔹 removeWhere() → condition অনুযায়ী remove
  🔹 clear() → সব item remove
  🔹 access → iteration (index নেই)
  🔹 properties → length, isEmpty, isNotEmpty
  🔹 search → contains()
  🔹 operations → union(), intersection(), difference()
  🔹 convert List → Set → duplicates remove
  🔹 spread operator {...} → merge multiple sets
  */
}
