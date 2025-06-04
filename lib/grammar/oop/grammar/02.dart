
// 空安全、late

void main() {
  String? name = null;
  print(name is Object); // false
  print(name is String); // false
  print(name is Null); // true

  say(name!); // Null check operator used on a null value

  Person haha = Person();
  haha.say();
}

void say(String name) {
  print("我的名字是:$name,有 ${name?.length} 个字");
}

class Person {
  late String name; // 延迟初始化


  void say() {
    print("我的名字是：$name"); // 编译器抛异常：LateInitializationError: Field 'name' has not been initialized.
    // 即使使用了late，但是一定要明确，不可以允诺
  }
}

// 使用 late 和 ! 一定要慎重，否则会crash，抛异常