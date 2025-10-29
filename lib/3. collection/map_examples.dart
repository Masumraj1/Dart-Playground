void main() {
  Map<String, int> ages = {'Alice': 25, 'Bob': 30};
  ages['Charlie'] = 35;

  ages.forEach((key, value) {
    print('$key: $value');
  });
}
