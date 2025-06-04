// ..  ... 符号语法糖

class Person {
  String name = '';
  int age = 0;

  void log(){
    print("name:$name,age:$age");
  }
}

void main() {
  Person toly = Person();
  toly.name = "toly";
  toly.age = 28;
  toly.log();

  // 使用 .. 效果和上面一样，仅作了解
  Person yongkun = Person();
  yongkun..name = "yongkun"..age = 31..log();


  // ...
  List<int> list = [0, 1, 2, 3, 4];
  List<int> list2 = [6, ...list, 7];
  print(list2); // [6, 0, 1, 2, 3, 4, 7]
}