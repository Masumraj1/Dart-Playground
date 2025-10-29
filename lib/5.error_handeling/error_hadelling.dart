// ===============================
// Dart Error Handling (Bangla Explainer)
// ===============================

class InvalidPasswordException implements Exception {
  String cause;
  InvalidPasswordException(this.cause);
}

void main() {
  // ===============================
  // 1️⃣ Error Handling কী?
  // ===============================
  /*
  🔹 Program execution চলাকালীন runtime এ error বা exception ঘটতে পারে।
  🔹 Error handling দ্বারা আমরা এগুলো gracefully handle করতে পারি।
  🔹 Dart এ main error handling techniques:
      1. try / catch
      2. on
      3. finally
      4. throw
      5. custom exceptions
  */

  // ===============================
  // 2️⃣ try / catch Block
  // ===============================
  try {
    int result = 12 ~/ 0; // Division by zero
    print(result);
  } catch (e) {
    print('Error: $e'); // Output: Error: IntegerDivisionByZeroException
  }

  // ===============================
  // 3️⃣ catch with StackTrace
  // ===============================
  try {
    int result = 12 ~/ 0;
    print(result);
  } catch (e, s) {
    print('Error: $e');
    print('StackTrace: $s');
  }

  // ===============================
  // 4️⃣ on Keyword
  // ===============================
  try {
    int result = 12 ~/ 0;
    print(result);
  } on IntegerDivisionByZeroException {
    print('Cannot divide by zero!');
  }

  // ===============================
  // 5️⃣ finally Block
  // ===============================
  try {
    int result = 12 ~/ 3;
    print(result); // Output: 4
  } catch (e) {
    print('Error: $e');
  } finally {
    print('This will always execute');
  }

  // ===============================
  // 6️⃣ throw Keyword
  // ===============================
  void checkAge(int age) {
    if (age < 18) {
      throw Exception('Age must be 18 or above');
    } else {
      print('Age is valid');
    }
  }

  try {
    checkAge(15);
  } catch (e) {
    print('Caught Exception: $e');
  }

  // ===============================
  // 7️⃣ Custom Exception Usage
  // ===============================
  void validatePassword(String password) {
    if (password.length < 6) {
      throw InvalidPasswordException('Password too short');
    } else {
      print('Password is valid');
    }
  }

  try {
    validatePassword('123');
  } catch (e) {
    print('Error: $e');
  }

  // ===============================
  // 8️⃣ Multiple catch / on blocks
  // ===============================
  try {
    int result = 12 ~/ 0;
  } on IntegerDivisionByZeroException {
    print('Division by zero error');
  } on FormatException {
    print('Format Exception');
  } catch (e) {
    print('Other Error: $e');
  } finally {
    print('Finally always executes');
  }

  // ===============================
  // 9️⃣ rethrow Keyword
  // ===============================
  // প্রথমে functionB declare
  void functionB() {
    throw Exception('Something went wrong in B');
  }

  // তারপর functionA declare
  void functionA() {
    try {
      functionB(); // ✅ এখন ঠিক আছে
    } catch (e) {
      print('Caught in A: $e');
      rethrow;
    }
  }

  try {
    functionA();
  } catch (e) {
    print('Caught in main: $e');
  }

  // ===============================
  // 🔟 Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Error Handling Summary:
  -----------------------------------------
  🔹 try / catch - basic error handling
  🔹 on - specific exception type handle করতে
  🔹 finally - always execute block
  🔹 throw - manually exception generate করা
  🔹 rethrow - caught exception পুনরায় throw করা
  🔹 custom exception class তৈরি করা যায়
  🔹 catch with StackTrace - error debugging সহজ হয়
  🔹 Error handling program crash কমায় এবং safe execution নিশ্চিত করে
  -----------------------------------------
  */
}
