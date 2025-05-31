
// 我从哪里来？(在哪里)
void foo(){
  // 我是谁? (是什么)
  String str = 'hello, world!';
  // 我要到哪里去？(做什么)
  print(str);
}

/// 今有雉兔同笼，上有三十五头，下有九十四足，问雉兔各几何？
/// 注: 【雉】 文言中的野鸡。
/// ----《孙子算经
main(){
  int n = 35; // 头数
  int m = 94; // 足数

  // y = (94 - 35*2)/2;
  // x = 35 - y;

  int y = (m - n*2) ~/ 2;
  int x = n - y;
  print("雉:$x  兔:$y");
}

void f0() {
  var a = 10; // 不推荐使用 var
  a = a*2; // 允许修改量的值
  var b = 'hello';
}

void f1() {
  // final: 运行时只赋值一次，不可被修改
  final a = 10;
  // const 编译期就赋值的常量，不可被修改
  const b = 20;
  // a = 20;
  // b = 30;

  // final 经常在初始化时配置私有属性时 作为修饰符
  // const 在布局和 配置常量时经常用到
}

void f2() {
  // static int a = 10; // Can't have modifier 'static' here
  // 在 dart 中，static 只能用于类中，而不可以用于修饰变量
}




