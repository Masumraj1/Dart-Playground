// ===============================
// Dart Control Flow Statements (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Control Flow কী?
  // ===============================
  /*
  🔹 Control Flow হলো program execution-এর order নিয়ন্ত্রণ করার উপায়।
  🔹 Dart এ বিভিন্ন statement এবং loop দিয়ে আমরা decision নিতে বা repeated action করতে পারি।
  🔹 মূলত control flow statements হলো:
    1. if / else
    2. switch / case
    3. for loop
    4. while / do-while loop
    5. break / continue / return
  */

  // ===============================
  // 2️⃣ if / else Statement
  // ===============================
  int number = 10;

  if (number % 2 == 0) {
    print('$number is Even');
  } else {
    print('$number is Odd');
  }

  // ===============================
  // 3️⃣ else if Ladder
  // ===============================
  int score = 85;

  if (score >= 90) {
    print('Grade: A');
  } else if (score >= 75) {
    print('Grade: B');
  } else if (score >= 50) {
    print('Grade: C');
  } else {
    print('Grade: F');
  }

  // ===============================
  // 4️⃣ Switch / Case Statement
  // ===============================
  String day = 'Tuesday';

  switch (day) {
    case 'Monday':
      print('Start of week');
      break;
    case 'Tuesday':
      print('Second day');
      break;
    default:
      print('Another day');
  }

  // ===============================
  // 5️⃣ For Loop
  // ===============================
  for (int i = 0; i < 5; i++) {
    print('i = $i');
  }

  // ===============================
  // 6️⃣ For-in Loop (Iterable)
  // ===============================
  List<String> fruits = ['Apple', 'Banana', 'Orange'];

  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  // ===============================
  // 7️⃣ While Loop
  // ===============================
  int count = 0;
  while (count < 3) {
    print('Count: $count');
    count++;
  }

  // ===============================
  // 8️⃣ Do-While Loop
  // ===============================
  int x = 0;
  do {
    print('x = $x');
    x++;
  } while (x < 3);

  // ===============================
  // 9️⃣ Break & Continue
  // ===============================
  for (int i = 0; i < 5; i++) {
    if (i == 2) continue; // Skip 2
    if (i == 4) break;    // Stop loop
    print('Loop i: $i');
  }

  // ===============================
  // 🔟 Ternary / Conditional Operator
  // ===============================
  int a = 10, b = 20;
  String result = (a > b) ? 'a is bigger' : 'b is bigger';
  print(result); // Output: b is bigger

  // ===============================
  // 1️⃣1️⃣ Null-aware Conditional Operator
  // ===============================
  String? name;
  String displayName = name ?? 'Guest';
  print(displayName); // Output: Guest

  // ===============================
  // 1️⃣2️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Control Flow Summary:
  -----------------------------------------
  🔹 if / else / else if - decision making
  🔹 switch / case - multiple condition matching
  🔹 for loop - fixed iteration
  🔹 for-in loop - iterable element iteration
  🔹 while / do-while - condition based iteration
  🔹 break - loop terminate
  🔹 continue - skip current iteration
  🔹 ternary (condition ? trueValue : falseValue)
  🔹 null-aware operator (??) - default value for null
  🔹 Control flow statements program এর logic control করে
  -----------------------------------------
  */
}
