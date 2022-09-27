import 'dart:io';

void main() {
  goEatPizza();
}

void goEatPizza() async {
  orderPizza();
  pizzaDelivered().then((value) => eatAndPay(value));
  chatting();
}

void orderPizza() {
  print('Ordered Pizza');
}

Future<String> pizzaDelivered() async {
  Duration waitTime = Duration(seconds: 4);
  String pizza = 'No Pizza yet';
  await Future.delayed(waitTime, () {
    pizza = 'Carnivore';
    print('Pizza Delivered');
  });
  return pizza;
}

void chatting() {
  print('Chatting...');
}

void eatAndPay(String pizza) {
  Duration waitTime = Duration(seconds: 4);
  sleep(waitTime);
  print('Paid $pizza on my way home');
}
