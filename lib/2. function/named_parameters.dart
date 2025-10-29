// ===============================
// Dart Named Parameters (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Named Parameter কী?
  // ===============================
  /*
  সাধারণত function call করার সময় আমরা positional parameter ব্যবহার করি।
  কিন্তু অনেক সময় argument-এর সংখ্যা বেশি হলে,
  কোনটা কোনটার মান সেটা বোঝা কঠিন হয়।

  🔹 এই সমস্যার সমাধান হলো — Named Parameters!
  অর্থাৎ function call করার সময় parameter-এর নাম উল্লেখ করে value দেওয়া যায়।
  এতে code অনেক readable হয়।
  */

  // ===============================
  // 2️⃣ Example: Named Parameter সহ Function
  // ===============================
  void printInfo({required String name, required int age}) {
    print('Name: $name, Age: $age');
  }

  // Function call করার সময় parameter-এর নাম দিয়েই value পাঠাতে হবে
  printInfo(name: 'Masum', age: 25); // ✅ Output: Name: Masum, Age: 25

  // ===============================
  // 3️⃣ Default Value ব্যবহার করা (Optional Named Parameter)
  // ===============================
  /*
  সব সময় parameter পাঠানো বাধ্যতামূলক নাও হতে পারে।
  তখন আমরা default value দিতে পারি।
  */

  void greet({String name = 'Guest'}) {
    print('Hello, $name!');
  }

  greet(); // Output: Hello, Guest!
  greet(name: 'Rana'); // Output: Hello, Rana!

  // ===============================
  // 4️⃣ Optional Named Parameter (nullable type)
  // ===============================
  /*
  Named parameter optional করতে হলে, type nullable করে দিতে হয়।
  (যেমন: String? name)
  */

  void introduce({String? name, int? age}) {
    print('Name: ${name ?? 'Unknown'}, Age: ${age ?? 0}');
  }

  introduce(); // Output: Name: Unknown, Age: 0
  introduce(name: 'Karim'); // Output: Name: Karim, Age: 0
  introduce(name: 'Rahim', age: 30); // Output: Name: Rahim, Age: 30

  // ===============================
  // 5️⃣ Mixing Positional + Named Parameters
  // ===============================
  /*
  চাইলে positional এবং named parameter একসাথে ব্যবহার করা যায়।
  */

  void orderFood(String item, {int quantity = 1, bool takeAway = false}) {
    print('Item: $item, Quantity: $quantity, TakeAway: $takeAway');
  }

  orderFood('Burger'); // Output: Item: Burger, Quantity: 1, TakeAway: false
  orderFood('Pizza', quantity: 2); // Output: Item: Pizza, Quantity: 2, TakeAway: false
  orderFood('Coffee', takeAway: true); // Output: Item: Coffee, Quantity: 1, TakeAway: true

  // ===============================
  // 6️⃣ Required Keyword
  // ===============================
  /*
  যদি কোনো named parameter অবশ্যই দিতে হয়,
  তাহলে ‘required’ keyword ব্যবহার করতে হয়।
  */

  void registerUser({required String username, required String password}) {
    print('User: $username, Password: $password');
  }

  registerUser(username: 'masum', password: '12345');
  // registerUser(username: 'masum'); ❌ Error - password missing

  // ===============================
  // 7️⃣ Example: Real-life Use Case (Signup Form)
  // ===============================
  void signup({
    required String name,
    required String email,
    String country = 'Bangladesh',
    int age = 18,
  }) {
    print('''
    🧾 Signup Details:
    Name: $name
    Email: $email
    Country: $country
    Age: $age
    ''');
  }

  signup(name: 'Masum Rana', email: 'masum@gmail.com');
  signup(name: 'Rafi', email: 'rafi@gmail.com', country: 'Canada', age: 30);

  // ===============================
  // 8️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Named Parameter Summary:
  -----------------------------------------
  🔹 Syntax: ({String name, int age})
  🔹 Call: functionName(name: 'Masum', age: 25)
  🔹 Optional করতে type nullable বা default value দিতে হয়
  🔹 বাধ্যতামূলক করতে ‘required’ ব্যবহার করতে হয়
  🔹 Mixed parameter সম্ভব (positional + named)
  🔹 Code readable ও error কমে যায়
  -----------------------------------------
  */
}
