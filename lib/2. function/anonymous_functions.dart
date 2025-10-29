// ======================
// Dart Anonymous Functions (সম্পূর্ণ Bangla Guide)
// ======================

void main() {
  // ======================
  // 1️⃣ Anonymous Function কি?
  // ======================
  /*
  Anonymous Function হলো এমন একটি function যার কোন নাম নেই।
  আমরা এটিকে সরাসরি variable এ assign করতে পারি বা অন্য function এর argument হিসেবে ব্যবহার করতে পারি।
  মূলত temporary বা একবারের জন্য ব্যবহৃত function এর জন্য।
  */

  // Example:
  var greet = (String name) {
    print('Hello, $name!');
  };

  greet('Masum'); // Output: Hello, Masum!

  // ======================
  // 2️⃣ Anonymous Function as Argument (Higher-order functions)
  // ======================
  /*
  Dart এ অনেক method আছে যা function parameter হিসেবে নেয়।
  উদাহরণ: List.forEach(), List.map(), List.where() ইত্যাদি
  */

  List<int> numbers = [1, 2, 3, 4, 5];

  // forEach method এ anonymous function
  numbers.forEach((number) {
    print('Number * 2 = ${number * 2}');
  });

  // ======================
  // 3️⃣ Anonymous Function with Return Value
  // ======================
  /*
  Anonymous function শুধু output return করতেও ব্যবহার করা যায়।
  */

  var square = (int n) {
    return n * n;
  };

  print('Square of 5: ${square(5)}'); // Output: 25

  // ======================
  // 4️⃣ Arrow Syntax (Single-line function)
  // ======================
  /*
  যদি function মাত্র একটি statement execute করে এবং return দেয়,
  তাহলে arrow syntax ব্যবহার করা যায়।
  */

  var triple = (int n) => n * 3;
  print('Triple of 5: ${triple(5)}'); // Output: 15

  // ======================
  // 5️⃣ map() method এ ব্যবহার
  // ======================
  /*
  map() ব্যবহার করে list এর প্রতিটি element modify করা যায়।
  */

  List<int> nums = [1, 2, 3, 4];
  var squaredNums = nums.map((num) => num * num).toList();
  print('Squared Numbers: $squaredNums'); // Output: [1, 4, 9, 16]

  // ======================
  // 6️⃣ where() method এ ব্যবহার (Filter)
  // ======================
  /*
  where() ব্যবহার করে list এর element filter করা যায়।
  */

  var evenNumbers = nums.where((num) => num % 2 == 0).toList();
  print('Even Numbers: $evenNumbers'); // Output: [2, 4]

  // ======================
  // 7️⃣ Nested Anonymous Function (Anonymous function ভিতরে anonymous function)
  // ======================
  /*
  Dart এ anonymous function এর ভিতরে আরেকটি anonymous function define করা যায়।
  এটি higher-order function এর জন্য খুব উপকারী।
  */

  Function outer = () {
    return (String msg) {
      print('Nested function says: $msg');
    };
  };

  var inner = outer();
  inner('Hello Dart!'); // Output: Nested function says: Hello Dart!

  // ======================
  // 8️⃣ Summary (সারসংক্ষেপ)
  // ======================
  /*
  🔹 Anonymous Function → নাম নেই এমন function
  🔹 Variable এ assign করা যায়
  🔹 Arrow syntax → single-line shorthand (=>)
  🔹 Higher-order function এ argument হিসেবে ব্যবহার করা যায়
  🔹 Common methods: forEach(), map(), where()
  🔹 Nested anonymous function possible
  🔹 Use-case: temporary function, single-use, clean code
  */
}
