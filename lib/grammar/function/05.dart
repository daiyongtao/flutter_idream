
// 默认参数

String repeat({
  String src = 'XXX哈哈',
  int count = 2,
}) {
  return src * count;
}

void main() {
  // 不传，使用默认参数
  String s1 = repeat();
  print(s1);
  // 不使用默认参数，自己定义
  String s2 = repeat(src: "123", count: 3);
  print(s2);
}