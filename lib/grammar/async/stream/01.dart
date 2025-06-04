import 'dart:io';
import "package:path/path.dart" as path show join;

// 使用stream读取 大文件，执行一系列的异步任务

int fileLength = 0;
int counter = 0;

void doTask() async {
  File file = File(path.join(Directory.current.path, "resources", "txt", "xuezhong.txt"));
  fileLength = await file.length();
  print("开始读取 雪中悍刀行.txt");

  Stream<List<int>> stream = file.openRead();
  stream.listen(_onData, onDone: _onDone);
}

void _onData(List<int> bytes) async {
  counter += bytes.length;
  double progress = counter * 100 / fileLength;
  DateTime time = DateTime.now();

  String timeStr = "[${time.hour}:${time.minute}:${time.second}:${time.millisecond}]";
  print(timeStr + "=" * (progress ~/ 2) + '[${progress.toStringAsFixed(2)}%]');
}

void _onDone() async {
  print("读取 雪中悍刀行.txt 结束");
}

void main() {
  doTask();
}