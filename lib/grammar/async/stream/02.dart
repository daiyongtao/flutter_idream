import 'dart:async';
import 'dart:io';
import "package:path/path.dart" as path show join;

// 使用stream读取 大文件，执行一系列的异步任务

late StreamSubscription<List<int>> subscription;
int fileLength = 0;
int counter = 0;

void doTask() async {
  // File file = File(path.join(Directory.current.path, "resources/txt", "xuezhong.txt"));
  File file = File(path.join(Directory.current.path, "resources", "txt", "xuezhong.txt"));
  // 文件路径：resources/txt/xuezhong.txt，以上两种方式都可以

  fileLength = await file.length();
  print("开始读取 雪中悍刀行.txt");

  Stream<List<int>> stream = file.openRead();
  subscription = stream.listen(_onData, onDone: _onDone); // 可以通过 subscription 存储，作为订阅器
}

void _onData(List<int> bytes) async {
  counter += bytes.length;
  double progress = counter * 100 / fileLength;
  DateTime time = DateTime.now();

  String timeStr = "[${time.hour}:${time.minute}:${time.second}:${time.millisecond}]";
  print(timeStr + "=" * (progress ~/ 2) + '[${progress.toStringAsFixed(2)}%]');

  if (progress >= 50) {
    // subscription.cancel(); // 取消订阅（监听)
    subscription.pause(); // 暂停
    print("读取 雪中悍刀行.txt 暂停");

    subscription.resume();
    print("读取 雪中悍刀行.txt 恢复");
  }
}

void _onDone() async {
  print("读取 雪中悍刀行.txt 结束");
}

void main() {
  doTask();
}