// ======================
// Dart List Examples
// ======================

void main() {
  // Simple list
  List<String> names = ['Masum', 'Rana', 'Rahim'];
  print(names);

  // Add new item
  names.add('Karim');
  print('After adding: $names');

  // Access item
  print('First name: ${names[0]}');

  // Remove item
  names.remove('Rana');
  print('After removing: $names');

  // Loop through list
  for (var name in names) {
    print('Hello, $name!');
  }

  // Spread operator
  List<String> newNames = ['Asha', ...names];
  print(newNames);
}

/*
🧩 Summary:
- List = ordered collection
- add(), remove(), index access
- for loop / forEach ব্যবহার করে iterate করা যায়
- spread operator (...) দিয়ে list merge করা যায়
*/
