int calculate(int a, int b, int Function(int, int) operation) {
  return operation(a, b);
}

void main() {
  int sum = calculate(10, 5, (x, y) => x + y);
  print('Sum: $sum');

  int mul = calculate(10, 5, (x, y) => x * y);
  print('Multiply: $mul');
}
