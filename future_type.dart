void main() {
  print('Before the future');
  final myFuture = Future<int>.delayed(
    Duration(seconds: 2),
    () => 42,
  )
      .then(
        (value) => print('Value: $value'),
      )
      .catchError(
        (error) => print('Error: $error'),
      )
      .whenComplete(
        () => print('Future is complete'),
      );
  print('After the future');
}
