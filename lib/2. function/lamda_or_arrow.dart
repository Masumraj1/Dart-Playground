// ===============================
// Dart Arrow / Lambda Functions (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Arrow / Lambda Function কী?
  // ===============================
  /*
  সাধারণত function লিখার সময় আমরা traditional function ব্যবহার করি।
  কিন্তু অনেক সময় function অনেক ছোট থাকে বা শুধুমাত্র একটি value return করে।

  🔹 এই সমস্যার সমাধান হলো — Arrow (=>) / Lambda function!
  অর্থাৎ এক লাইনের function খুব conciseভাবে লিখা যায়।
  */

  // ===============================
  // 2️⃣ Traditional vs Arrow Function
  // ===============================
  // Traditional function
  int add(int a, int b) {
    return a + b;
  }

  // Arrow function
  int addArrow(int a, int b) => a + b;

  print(add(2, 3));       // Output: 5
  print(addArrow(2, 3));  // Output: 5

  // ===============================
  // 3️⃣ Simple Return
  // ===============================
  String greet(String name) => "Hello, $name!";

  print(greet('Masum')); // Output: Hello, Masum!

  // ===============================
  // 4️⃣ Arrow Function with List / map / forEach
  // ===============================
  List<int> numbers = [1, 2, 3, 4];

  var squares = numbers.map((n) => n * n);
  print(squares.toList()); // Output: [1, 4, 9, 16]

  numbers.forEach((n) => print('Number: $n'));

  // ===============================
  // 5️⃣ Conditional Expression
  // ===============================
  String checkEvenOdd(int n) => n % 2 == 0 ? "Even" : "Odd";

  print(checkEvenOdd(5)); // Output: Odd
  print(checkEvenOdd(8)); // Output: Even

  // ===============================
  // 6️⃣ Anonymous Function / Lambda
  // ===============================
  var multiply = (int x, int y) => x * y;

  print(multiply(4, 5)); // Output: 20



  var c = Circle(5);
  print(c.area); // Output: 78.5
  c.updateRadius = 10;
  print(c.area); // Output: 314.0

  // ===============================
  // 8️⃣ Limitations
  // ===============================
  /*
  🔹 Arrow function শুধুমাত্র একটি expression নিতে পারে
  🔹 Multiple statements থাকলে traditional function ব্যবহার করতে হবে
  */

  // Wrong: (Multiple statements)
  // int sum(int a, int b) => { print(a); print(b); return a + b; }; // ❌ Error

  // Correct: Traditional function
  int sum(int a, int b) {
  print(a);
  print(b);
  return a + b;
  }

  print(sum(2, 3)); // Output: 2 3 5

  // ===============================
  // 9️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Arrow / Lambda Function Summary:
  -----------------------------------------
  🔹 Syntax: returnType functionName(params) => expression;
  🔹 Single-line function এর জন্য ideal
  🔹 Anonymous function হিসেবে map, forEach, reduce এ ব্যবহার করা যায়
  🔹 Getter / Setter এ ব্যবহার করা যায়
  🔹 Multiple statements এর জন্য traditional function প্রয়োজন
  🔹 Code readable এবং concise হয়
  -----------------------------------------
  */
}

// ===============================
// 7️⃣ Arrow in Getter / Setter
// ===============================
class Circle {
  double radius;
  Circle(this.radius);

  double get area => 3.14 * radius * radius; // Getter using Arrow
  set updateRadius(double r) => radius = r;  // Setter using Arrow
}