//4 function
// 2つの整数を受け取り、それらの数を加算して結果を返すDartのプログラムを作成してください。
// また、この関数を使用して、10と20を加算した結果を表示してください。

void main() {
  calculation(10, 20);
}

void calculation(int num1, int num2) {
  int result = num1 + num2;
  print("$num1 + $num2 = $result");
}

