void greet({required String name, int age = 18}) {
  print('Hello $name, Age: $age');
}

void main() {
  greet(name: 'Masum');
  greet(name: 'Rana', age: 25);
}
