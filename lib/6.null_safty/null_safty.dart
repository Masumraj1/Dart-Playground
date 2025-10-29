// ===============================
// Dart Null Safety (Bangla Explainer)
// ===============================

void main() {
  // ===============================
  // 1️⃣ Null Safety কী?
  // ===============================
  /*
  🔹 Dart 2.12 থেকে Null Safety introduce করা হয়েছে।
  🔹 Null Safety নিশ্চিত করে যে কোনো variable বা object কখনো null হবে কিনা compile-time এ জানা যাবে।
  🔹 এতে runtime null errors (NullPointerException) কমে যায়।
  */

  // ===============================
  // 2️⃣ Non-nullable variable
  // ===============================
  int a = 10; // Non-nullable
  // a = null; // ❌ Error

  String name = 'Masum';
  // name = null; // ❌ Error

  print(a);   // Output: 10
  print(name); // Output: Masum

  // ===============================
  // 3️⃣ Nullable variable
  // ===============================
  int? b; // Nullable variable
  b = null; // ✅ Allowed
  b = 20;

  String? nickName;
  nickName = null; // ✅ Allowed
  print(b);        // Output: 20
  print(nickName); // Output: null

  // ===============================
  // 4️⃣ Null-aware operators
  // ===============================
  /*
  🔹 Null-aware operators Dart Null Safety এর গুরুত্বপূর্ণ অংশ:
    1. ??   - default value
    2. ??=  - assign if null
    3. ?.   - null-aware access
    4. !    - null assertion (force non-null)
  */

  // 4.1 ?? (Default value)
  String? userName;
  String displayName = userName ?? 'Guest';
  print(displayName); // Output: Guest

  // 4.2 ??= (Assign if null)
  int? count;
  count ??= 5; // count যদি null হয় তবে 5 assign হবে
  print(count); // Output: 5

  // 4.3 ?. (Null-aware access)
  String? str;
  print(str?.length); // Output: null (no error)

  // 4.4 ! (Null assertion)
  String? message = 'Hello';
  print(message!.length); // Output: 5
  // message = null; print(message!.length); // ❌ runtime error

  // ===============================
  // 5️⃣ Late variables
  // ===============================
  /*
  🔹 Late keyword দিয়ে variable declare করা যায় যা পরে initialize হবে
  */
  late String city;
  city = 'Dhaka';
  print(city); // Output: Dhaka

  // ===============================
  // 6️⃣ Nullable Collections
  // ===============================
  List<int>? numbers;       // nullable list
  numbers = [1, 2, 3];
  print(numbers);           // Output: [1, 2, 3]

  List<int>? nullNumbers;
  print(nullNumbers ?? []); // Output: [] (default empty list)

  // ===============================
  // 7️⃣ Real-life Use Case
  // ===============================
  /*
  🔹 API থেকে data আসতে পারে null
  🔹 User input optional হতে পারে
  🔹 Null Safety ও null-aware operators দিয়ে safe handling করা যায়
  */
  String? apiName;
  String finalName = apiName ?? 'Default Name';
  print(finalName); // Output: Default Name

  // ===============================
  // 8️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Null Safety Summary:
  -----------------------------------------
  🔹 Non-nullable variable: type ? ছাড়া declare
  🔹 Nullable variable: type ? দিয়ে declare
  🔹 Null-aware operators:
      - ??   → default value
      - ??=  → assign if null
      - ?.   → null-safe property/method access
      - !    → null assertion (force non-null)
  🔹 late keyword → runtime এ initialize করার জন্য
  🔹 Null Safety runtime null error কমায়
  🔹 Nullable collections → safe merge / default values ব্যবহার করা যায়
  -----------------------------------------
  */
}
