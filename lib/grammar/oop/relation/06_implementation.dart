
import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

abstract class Calculate {
  void calculate() {}

  // void calculate() {
  //   print("interface 默认实现 calculate");
  // }
}

interface class Electric {
  void open() {}
  void close() {}
}

class Computer implements Calculate, Electric {
  @override
  void calculate() {
    print("do calculate by computer");
  }

  @override
  void close() {
    print("computer close");
  }

  @override
  void open() {
    print("computer open");
  }
}

class Human implements Calculate {
  @override
  void calculate() {
    print("do calculate by Human");
  }
}