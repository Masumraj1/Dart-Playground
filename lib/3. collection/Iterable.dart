// ===============================
// Dart Iterable (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Iterable কী?
  // ===============================
  /*
  Dart এ অনেক collection type থাকে যেমন List, Set, Map।
  এগুলো মধ্যে এক বা একাধিক element নিয়ে data রাখা হয়।

  🔹 Iterable হলো এমন একটি object যা একবারে একটি element access করার সুবিধা দেয়।
  🔹 সহজ কথায়, যেকোনো collection যেটা iteration করা যায়, তা হলো Iterable।
  */

  // ===============================
  // 2️⃣ List is an Iterable
  // ===============================
  List<int> numbers = [1, 2, 3, 4, 5];

  // List হলো Iterable, তাই আমরা for-in loop ব্যবহার করতে পারি
  for (var n in numbers) {
    print(n);
  }

  // ===============================
  // 3️⃣ Iterable এর Common Properties & Methods
  // ===============================
  /*
  🔹 length      - কতগুলো element আছে
  🔹 isEmpty     - empty কিনা
  🔹 isNotEmpty  - empty নয়
  🔹 first       - প্রথম element
  🔹 last        - শেষ element
  🔹 contains(x) - element আছে কিনা
  🔹 map()       - element পরিবর্তন করে নতুন Iterable
  🔹 where()     - condition অনুসারে filter
  🔹 reduce()    - সব element combine করা
  🔹 forEach()   - element গুলো loop করা
  */

  print(numbers.length);     // Output: 5
  print(numbers.isEmpty);    // Output: false
  print(numbers.isNotEmpty); // Output: true
  print(numbers.first);      // Output: 1
  print(numbers.last);       // Output: 5
  print(numbers.contains(3)); // Output: true

  // ===============================
  // 4️⃣ map() – Transform each element
  // ===============================
  var squares = numbers.map((n) => n * n);
  print(squares.toList()); // Output: [1, 4, 9, 16, 25]

  // ===============================
  // 5️⃣ where() – Filter elements
  // ===============================
  var evenNumbers = numbers.where((n) => n % 2 == 0);
  print(evenNumbers.toList()); // Output: [2, 4]

  // ===============================
  // 6️⃣ reduce() – Combine elements
  // ===============================
  var sum = numbers.reduce((a, b) => a + b);
  print(sum); // Output: 15

  // ===============================
  // 7️⃣ forEach() – Iterate elements
  // ===============================
  numbers.forEach((n) => print('Number: $n'));

  // ===============================
  // 8️⃣ Iterable.generate()
  // ===============================
  /*
  নতুন Iterable তৈরি করার জন্য generate ব্যবহার করা যায়
  */
  var squares2 = Iterable.generate(5, (i) => (i + 1) * (i + 1));
  print(squares2.toList()); // Output: [1, 4, 9, 16, 25]

  // ===============================
  // 9️⃣ take() & skip()
  // ===============================
  var firstThree = numbers.take(3);
  var skipTwo = numbers.skip(2);

  print(firstThree.toList()); // Output: [1, 2, 3]
  print(skipTwo.toList());    // Output: [3, 4, 5]

  // ===============================
  // 🔟 Iterable to List/Set
  // ===============================
  var numberList = numbers.toList();
  var numberSet = numbers.toSet();

  print(numberList); // Output: [1, 2, 3, 4, 5]
  print(numberSet);  // Output: {1, 2, 3, 4, 5}

  // ===============================
  // 1️⃣1️⃣ Infinite Iterable
  // ===============================
  /*
  Iterable.generate বা Iterable.periodic দিয়ে infinite Iterable তৈরি করা যায়
  */
  var infiniteNumbers = Iterable.generate(10, (i) => i + 1); // technically finite here
  print(infiniteNumbers.toList()); // Output: [1,2,3,...,10]

  // ===============================
  // 1️⃣2️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Iterable Summary:
  -----------------------------------------
  🔹 Iterable হলো collection যা iteration support করে
  🔹 Common Iterable types: List, Set
  🔹 Common Methods: map(), where(), reduce(), forEach(), take(), skip()
  🔹 Iterable.generate() দিয়ে নতুন Iterable তৈরি করা যায়
  🔹 Iterable.lazy evaluation ব্যবহার করে memory efficient code লেখা যায়
  🔹 Iterable.toList() / toSet() দিয়ে collection এ convert করা যায়
  -----------------------------------------
  */
}
