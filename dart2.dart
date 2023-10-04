import 'dart:math';
//2 if-else
//与えられた数が偶数か奇数かを判定するDartのプログラムを作成してください。

void main() {
  Random random = Random();
  int randomNum = random.nextInt(100);
  String message;
  print("Number : $randomNum");
  
  if(randomNum % 2 == 0) {
    message = "even";
  } else {
    message = "odd";
  }
  
  print("This number is $message");
  
}
