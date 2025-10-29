// ===============================
// Dart Asynchronous Programming (Bangla Explainer)
// ===============================

import 'dart:async';

void main() async {
  // ===============================
  // 1️⃣ Asynchronous Programming কী?
  // ===============================
  /*
  🔹 Asynchronous programming হলো এমন একটি প্রক্রিয়া যেখানে program
    এক বা একাধিক কাজ parallel বা background এ execute করতে পারে।
  🔹 Dart এ asynchronous programming mainly Futures, async, await, Streams দিয়ে করা হয়।
  🔹 এটি program কে non-blocking এবং responsive রাখে।
  */

  // ===============================
  // 2️⃣ Future (Single async result)
  // ===============================
  Future<String> fetchUserData() {
    return Future.delayed(Duration(seconds: 2), () => 'User data loaded');
  }

  // Async function call
  fetchUserData().then((data) {
    print(data); // Output after 2 sec: User data loaded
  });

  // ===============================
  // 3️⃣ async / await
  // ===============================
  Future<void> loadUserData() async {
    String data = await fetchUserData();
    print('Async/Await: $data'); // Output after 2 sec
  }

  await loadUserData();

  // ===============================
  // 4️⃣ Handling Errors with Future
  // ===============================
  Future<void> fetchWithError() {
    return Future.delayed(Duration(seconds: 1), () {
      throw Exception('Something went wrong!');
    });
  }

  fetchWithError().then((_) {
    print('Success');
  }).catchError((e) {
    print('Caught error: $e'); // Output: Caught error: Exception: Something went wrong!
  });

  // ===============================
  // 5️⃣ try / catch with async/await
  // ===============================
  Future<void> asyncErrorHandling() async {
    try {
      await fetchWithError();
    } catch (e) {
      print('Async error caught: $e'); // Output: Async error caught: Exception: Something went wrong!
    }
  }

  await asyncErrorHandling();

  // ===============================
  // 6️⃣ Streams (Multiple async events)
  // ===============================
  Stream<int> numberStream() async* {
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      yield i; // emit value
    }
  }

  await for (var number in numberStream()) {
    print('Stream value: $number'); // Output: 1,2,3,4,5 each second
  }

  // ===============================
  // 7️⃣ Stream with listen
  // ===============================
  numberStream().listen(
        (value) => print('Listen Stream: $value'),
    onError: (e) => print('Stream Error: $e'),
    onDone: () => print('Stream completed'),
  );

  // ===============================
  // 8️⃣ Real-life Use Cases
  // ===============================
  /*
  🔹 API calls / network requests
  🔹 File read/write operations
  🔹 Timers / Delayed execution
  🔹 UI responsiveness maintain করা
  🔹 Streams → live data, chat, notifications handle করা
  */

  // ===============================
  // 9️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Asynchronous Programming Summary:
  -----------------------------------------
  🔹 Future → single async result
  🔹 async / await → sequential async code
  🔹 then() → callback after Future completion
  🔹 catchError → handle Future error
  🔹 Streams → multiple async events over time
  🔹 await for → iterate Stream values
  🔹 Non-blocking / responsive code
  🔹 Ideal for API calls, timers, live updates, file IO
  -----------------------------------------
  */
}
