
// 泛型 - 01

V? find<K, V>(K k, Map<K, V> map) {
  return map[k];
}

void main() {
  Map<int, String> map = {1: "one"};
  String? info = find<int, String>(1, map);
  print(info); // one
}


// class CClass<T extends Shape> {
//   final T memberT;
//   CClass(this.memberT);
//
//   void draw() {
//     memberT.draw();
//   }
// }

// void main() {
  // CClass<int> obj = CClass(99); // ERROR,泛型必须是 Shape 派生类
  // CClass<Circle> obj = CClass(Circle(Vec2(0,2)));
// }

