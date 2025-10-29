void main() {
  // ===================================
  // ১. Required Positional Parameters
  // (আবশ্যিক পজিশনাল প্যারামিটার)
  // ===================================

  // এই ফাংশনটি কল করতে হলে 'name' এবং 'age' - উভয় মানই দিতে হবে।
  // ক্রম: প্রথমটি নাম, তারপর বয়স।
  void printUserDetails(String name, int age) {
    print('User: $name, Age: $age');
  }

  // ✅ সঠিক কল: ক্রম বজায় রাখা হয়েছে।
  printUserDetails('Jamal Uddin', 30);
  // Output: User: Jamal Uddin, Age: 30

  // ❌ ভুল কল (Compile Error):
  // printUserDetails(30, 'Jamal Uddin'); 
  // - কারণ: প্রথম আর্গুমেন্টটি String হওয়ার কথা ছিল, কিন্তু দেওয়া হয়েছে int.

  print('---');


  // ===================================
  // ২. Optional Positional Parameters
  // (ঐচ্ছিক পজিশনাল প্যারামিটার)
  // ===================================

  // 'message' এবং 'quantity' হলো ঐচ্ছিক প্যারামিটার, যা [] ব্র্যাকেটের মধ্যে আছে।
  void orderItem(String item, [String? message, int quantity = 1]) {
    String finalMessage = message ?? 'No specific note.';
    print('Order: $item, Quantity: $quantity, Note: $finalMessage');
  }

  // ✅ কল ১: শুধু Required প্যারামিটারটি দিয়ে কল
  orderItem('Chicken Roll');
  // Output: Order: Chicken Roll, Quantity: 1, Note: No specific note.
  // - ব্যাখ্যা: message (null) এবং quantity (default 1) ব্যবহার করেছে।

  // ✅ কল ২: প্রথম Optional প্যারামিটারটি দিয়ে কল
  orderItem('Coffee', 'Less Sugar');
  // Output: Order: Coffee, Quantity: 1, Note: Less Sugar
  // - ব্যাখ্যা: 'Less Sugar' -> message এর জন্য, quantity ডিফল্ট 1.

  // ✅ কল ৩: দুটি Optional প্যারামিটারই দিয়ে কল
  orderItem('Pizza', 'Extra Cheese', 2);
  // Output: Order: Pizza, Quantity: 2, Note: Extra Cheese
  // - ব্যাখ্যা: 'Extra Cheese' -> message এর জন্য (position 2), 
  //            2 -> quantity এর জন্য (position 3).

  // ❌ ভুল কল (Run-time logic error, but not a Dart error):
  // orderItem('Juice', 3); 
  // - কারণ: আপনি quantity এর মান (3) message এর অবস্থানে দিচ্ছেন, যা type mismatch.
  // Dart error হবে কারণ 3 একটি String নয়। ক্রম এখানেও গুরুত্বপূর্ণ।

}