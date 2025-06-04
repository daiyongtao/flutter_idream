
// human_lib.dart 库 集合了 以上三个文件，可以同时访问三个文件里的类和方法

import 'human_lib.dart';

void main() {
  Human human = Human();
  human.log();

  Body body = Body();
  body.log();

  Head head = Head();
  head.log();
}