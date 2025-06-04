
import 'dart:io';
import "package:path/path.dart" as path show join;

// 同步读取，task1 -> task2 -> task3
// task3会等task2走完才走

void doTask1() {
  print('doTask1');
}

void doTask2() {
  File file = File(path.join(Directory.current.path, "yongkun.yaml"));
  print("开始读取====pubspec.yaml====");

  String content = file.readAsStringSync();
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