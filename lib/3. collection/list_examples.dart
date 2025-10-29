void main() {
  List<String> names = ['Masum', 'Rana', 'Rahim'];
  names.add('Karim');
  print(names);

  for (var name in names) {
    print('Hello $name!');
  }

  List<String> newNames = ['Asha', ...names];
  print(newNames);
}
