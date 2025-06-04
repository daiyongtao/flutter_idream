
abstract class Shape {

  // 没有默认实现，就是抽象方法（类似于协议中的 协议方法）
  String dubugLabelName();

  void move() {
    print("move");
  }
}

class Circle extends Shape {
  @override
  String dubugLabelName() {
    // 必须实现
    return "Circle";
  }

}

void main() {
  Exception exception = Exception("hello");
  print(exception.runtimeType); // _Exception
}

