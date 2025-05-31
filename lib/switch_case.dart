
void main () {

  foo();
}

void foo() {
  Person p = Person(name: "yongkun");
  print(getPersonName(p)); // yongkun
}

// switch 不仅可以穷举枚举，好可以穷举实例、甚至可以穷举类的类型
String getPersonName(Person p) {
  const Person toly = Person(name: "toly");
  const Person yongkun = Person(name: "yongkun");
  switch (p) {
    case toly:
      return toly.name;
    case yongkun:
      return yongkun.name;
  }
  return "none";
}

class Person {
  final String name;

  const Person({required this.name});

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other is Person && runtimeType == other.runtimeType && name == other.name);
  }
}