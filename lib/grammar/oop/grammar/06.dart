
// 函数类型的回调、监听

// 通过typedef定义一个函数
typedef OnBiteCallBack = void Function(String name);

class FishMan {
  // 函数可以作为变量，可以作为参数
  final OnBiteCallBack hook;

  FishMan({required this.hook});
}

class Pond {
  FishMan fishMan;
  Pond({required this.fishMan});

  void emitFish(String name) {
    fishMan.hook(name);
  }
}

main() {
  FishMan man = FishMan(hook: (String name) {
    print("钓到一条$name");
  });

  Pond pond = Pond(fishMan: man);
  pond.emitFish("鲫鱼");

  // 打印：钓到一条鲫鱼
}