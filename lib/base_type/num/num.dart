

void main() {
  int count = 49;   // 整型
  double pi = 3.14; // 浮点型

  print("${count.runtimeType} ===== ${pi.runtimeType}"); // int ===== double

  num b = 3.25;
  b.abs();
  b.ceil();
  b.floor();
  b.truncate(); // 去除小数部分取整
  String v = b.toStringAsFixed(1); // 四舍五入，保留1位小数，3.3
  print(v);

  foo();
  foo1();
}

void foo() {
  int a = 2022;
  print(a.toRadixString(2)); // 将a转成二进制字符串: 11111100110
  print(a.toRadixString(16)); // 16进制: 7e6
}

void foo1() {
  int value = int.parse('7e6', radix: 16);
  print(value); // 2022

  int value1 = int.parse('yongkun', radix: 36);
  print(value1); // 75501192335
}