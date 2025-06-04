import 'dart:io';
import "package:path/path.dart" as path show join;

// 使用 Feature 异步读取：
// task1 -> task2打印 -> task3 -> task3结果回包

void doTask1() {
  print('doTask1');
}

void doTask2() {
  File file = File(path.join(Directory.current.path, "yongkun.yaml"));
  print("开始读取====pubspec.yaml====");

  file.readAsString().then((content){
    print("读取结束====pubspec.yaml====");
    print('pubspec.yaml 内容: $content');
  });
}

void doTask3() {
  print('doTask3');
}

void main() {
  doTask1();
  doTask2();
  doTask3();
}