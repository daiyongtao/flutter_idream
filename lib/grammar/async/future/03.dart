import 'dart:io';
import "package:path/path.dart" as path show join;

// 使用 async-await 异步读取：
// async-await 增强可读性，从代码来看没有回包，而是类似同步代码一样书写

void doTask1() {
  print('doTask1');
}

void doTask2() async {
  File file = File(path.join(Directory.current.path, "yongkun.yaml"));
  print("开始读取====pubspec.yaml====");

  String content = await file.readAsString();

  print("读取结束====pubspec.yaml====");

  print('pubspec.yaml 内容: $content');
}

void doTask3() {
  print('doTask3');
}

void main() {
  doTask1();
  doTask2();
  doTask3();
}