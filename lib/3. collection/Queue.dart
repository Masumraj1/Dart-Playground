// ===============================
// Dart Queue Collection (Bangla Explainer)
// ===============================

import 'dart:collection';

void main() {
  // ===============================
  // 1️⃣ Queue কী?
  // ===============================
  /*
  🔹 Queue হলো একটি collection যা FIFO (First-In-First-Out) নিয়মে element manage করে।
  🔹 Dart এ Queue class `dart:collection` library তে থাকে।
  🔹 আমরা Queue ব্যবহার করতে পারি element add/remove করার জন্য efficient ভাবে।
  */

  // ===============================
  // 2️⃣ Queue তৈরি করা
  // ===============================
  Queue<int> q = Queue();

  // Element যোগ করা
  q.add(10);
  q.add(20);
  q.add(30);

  print(q); // Output: {10, 20, 30}

  // ===============================
  // 3️⃣ Element Access (peek / first / last)
  // ===============================
  print(q.first); // Output: 10
  print(q.last);  // Output: 30
  print(q.isEmpty);    // Output: false
  print(q.isNotEmpty); // Output: true

  // ===============================
  // 4️⃣ Element Remove (removeFirst / removeLast / remove)
  // ===============================
  var firstItem = q.removeFirst(); // FIFO removal
  print(firstItem); // Output: 10
  print(q);         // Output: {20, 30}

  q.removeLast();
  print(q); // Output: {20}

  // ===============================
  // 5️⃣ Add Elements (addFirst / addLast)
  // ===============================
  q.addFirst(5);
  q.addLast(25);
  print(q); // Output: {5, 20, 25}

  // ===============================
  // 6️⃣ Queue থেকে Element খোঁজা (contains / elementAt)
  // ===============================
  print(q.contains(20));     // Output: true
  print(q.elementAt(1));     // Output: 20

  // ===============================
  // 7️⃣ Iteration over Queue
  // ===============================
  for (var item in q) {
    print('Item: $item');
  }

  q.forEach((item) => print('Queue Element: $item'));

  // ===============================
  // 8️⃣ Queue এর Length / Clear
  // ===============================
  print(q.length); // Output: 3
  q.clear();
  print(q.isEmpty); // Output: true

  // ===============================
  // 9️⃣ Queue from List / Iterable
  // ===============================
  var queueFromList = Queue.from([1, 2, 3, 4]);
  print(queueFromList); // Output: {1, 2, 3, 4}

  // ===============================
  // 🔟 Real-life Use Case: Task Queue
  // ===============================
  Queue<String> taskQueue = Queue();
  taskQueue.add('Task 1');
  taskQueue.add('Task 2');
  taskQueue.add('Task 3');

  while(taskQueue.isNotEmpty) {
    print('Processing: ${taskQueue.removeFirst()}');
  }

  // Output:
  // Processing: Task 1
  // Processing: Task 2
  // Processing: Task 3

  // ===============================
  // 1️⃣1️⃣ Summary (সারসংক্ষেপ)
  // ===============================
  /*
  🧩 Dart Queue Summary:
  -----------------------------------------
  🔹 FIFO (First-In-First-Out) collection
  🔹 Import: import 'dart:collection';
  🔹 Common Methods:
      add() / addFirst() / addLast()
      removeFirst() / removeLast() / remove()
      first / last / peek
      contains() / elementAt()
      length / isEmpty / isNotEmpty / clear()
  🔹 Efficient element insertion/removal at both ends
  🔹 Ideal for Task Queue, Event Queue, Job Queue
  🔹 Queue.from(list) দিয়ে List থেকে Queue তৈরি করা যায়
  -----------------------------------------
  */
}
