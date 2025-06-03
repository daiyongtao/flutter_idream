
interface class Calculate {
  void calculate() {}
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