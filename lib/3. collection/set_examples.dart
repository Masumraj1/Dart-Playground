void main() {
  Set<int> numbers = {1, 2, 3};
  numbers.add(2); // duplicate ignored
  numbers.add(4);

  for (var num in numbers) {
    print(num);
  }
}
