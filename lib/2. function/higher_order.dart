// ======================
// Dart Higher-Order Functions (Bangla Explainer)
// ======================

void main() {
  // ======================
  // 1️⃣ Higher-Order Function কী?
  // ======================
  /*
  Higher-Order Function হচ্ছে এমন function যেটা —
  🔹 অন্য function কে parameter হিসেবে নিতে পারে
  🔹 অথবা কোনো function return করতে পারে

  সহজভাবে বললে:
  Function → যেটা আরেকটা function এর সাথে কাজ করে, সেটাই Higher-Order Function!
  */

  // ======================
  // 2️⃣ Function কে parameter হিসেবে পাঠানো
  // ======================
  void calculate(int a, int b, Function operation) {
    print('Result: ${operation(a, b)}');
  }

  // এখন আমরা function parameter হিসেবে পাঠাবো
  int add(int x, int y) => x + y;
  int multiply(int x, int y) => x * y;

  calculate(5, 3, add);       // Output: 8
  calculate(5, 3, multiply);  // Output: 15

  // Anonymous function দিয়েও করা যায়
  calculate(10, 2, (x, y) => x - y); // Output: 8

  // ======================
  // 3️⃣ Function return করা (Function inside Function)
  // ======================
  /*
  কোনো function থেকে অন্য function return করলেও সেটা Higher-Order Function।
  */

  Function greet(String name) {
    return () {
      print('Welcome, $name!');
    };
  }

  var sayHello = greet('Masum');
  sayHello(); // Output: Welcome, Masum!

  // ======================
  // 4️⃣ Built-in Higher-Order Functions (map, where, forEach ইত্যাদি)
  // ======================
  /*
  Dart-এর অনেক built-in function আসলে Higher-Order Function।
  কারণ তারা অন্য function parameter হিসেবে নেয়।
  */

  List<int> numbers = [1, 2, 3, 4, 5];

  // map → প্রতিটি element পরিবর্তন করে নতুন List দেয়
  var squared = numbers.map((n) => n * n).toList();
  print('Squared List: $squared'); // [1, 4, 9, 16, 25]

  // where → শর্ত অনুযায়ী element ফিল্টার করে
  var even = numbers.where((n) => n % 2 == 0).toList();
  print('Even Numbers: $even'); // [2, 4]

  // forEach → প্রতিটি element এর উপর কাজ করে
  numbers.forEach((n) {
    print('Number: $n');
  });

  // ======================
  // 5️⃣ Real-life Example: Custom Filter Function
  // ======================
  /*
  আমরা নিজে Higher-Order Function বানাতে পারি যেটা
  একটা function parameter হিসেবে নেয় — যেমন custom filtering।
  */

  List<String> names = ['Masum', 'Rana', 'Rahim', 'Karim'];

  List<String> filterNames(List<String> list, bool Function(String) condition) {
    return list.where(condition).toList();
  }

  // শর্ত: নামের দৈর্ঘ্য ৫ এর বেশি হলে রাখবে
  var longNames = filterNames(names, (name) => name.length > 4);
  print('Long Names: $longNames'); // [Masum, Rahim, Karim]

  // ======================
  // 6️⃣ Function returning Function (Multiplier Example)
  // ======================
  /*
  এখানে outer function একটি inner function return করছে।
  */

  Function makeMultiplier(int factor) {
    return (int value) => value * factor;
  }

  var doubleIt = makeMultiplier(2);
  var tripleIt = makeMultiplier(3);

  print('Double 5 → ${doubleIt(5)}'); // 10
  print('Triple 5 → ${tripleIt(5)}'); // 15

  // ======================
  // 7️⃣ Summary (সারসংক্ষেপ)
  // ======================
  /*
  🔹 Higher-Order Function = function যেটা:
     → function parameter হিসেবে নেয়
     → function return করে

  🔹 ব্যবহার:
     - forEach(), map(), where(), reduce() ইত্যাদি built-in methods
     - reusable logic তৈরি করতে
     - cleaner functional code লেখার জন্য

  🔹 উদাহরণ:
     - calculate(add/multiply)
     - greet() function থেকে function return
     - custom filter function
     - makeMultiplier() dynamic logic generator
  */
}
