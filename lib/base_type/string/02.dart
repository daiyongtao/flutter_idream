
// 2.字符串模版

void main() {
  String addr = '逍遥津公园';
  String name = '小芳';
  String result = '今天我和' + name + '一起去' + addr + '玩，很开心！';
  print(result);

  String result1 = '今天我和${name}一起去$addr玩，很开心！';
  print(result1);
}