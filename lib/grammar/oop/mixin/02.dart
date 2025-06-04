
mixin A {
  String name = "A";

  void log() {
    print(name);
  }
}

mixin B {
  String name = "B";

  void log() {
    print(name);
  }
}

class C with A, B {}

// // 依次混入A、B，如果有同名函数或者成员变量,会使用后者
// // 处理了二义性
// void main() {
//   C c = C();
//   c.log(); // B
// }

// 协议：都需要实现
// 继承：
// 混入


interface class IA {
  void log() {
    print("A");
  }
}

interface class IB {
  void log() {
    print("B");
  }
}

class IC implements IA, IB {
  @override
  void log() {
    print("C");
  }
}

void main() {
  IC c = IC();
  c.log(); // 不会打印，因为如果是协议，必须要实现log方法，相当于处理了二义性问题（IA 和 IB 都有 log协议方法）
}

// 继承：class、extend
// 协议：interface、implements
// 混入：mixin、with、on

mixin Person {
  double height = 1.65;
}

mixin Student on Person {
  double speed = 20;

  // 跑步
  void run() {
    // 可以引用到Person的height变量
    print("======$height=====");
    print("======$runtimeType=====");
  }
}

// 如果只想混入Student是不可以的，因为Student on Person了，相当于继承了Person，必须要把Person也混入进来，而且要在Student前面
class Shape with Person, Student {

}
