
// 3.字符串方法

void main() {
  // foo();
  // foo2();
  // foo3();
  foo4();
}

/// 可以通过类似数组一样取出字符串中的对应字符
void foo() {
  String name = "yongkun1993";
  print(name[4]); // k
  print(name[name.length - 1]); // 3

  // substring(start, end)，包含起始字符，不包含结束字符，所以不是 "kun1993"
  print(name.substring(4, name.length - 1)); // kun199
}

/// 空格处理
void foo1() {
  String name = " yongkun 1993 ";

  // 去除首尾空格："yongkun 1993"
  name.trim();

  // 去除开头空格："yongkun 1993 "
  name.trimLeft();

  // 去除结尾空格：" yongkun 1993"
  name.trimRight();
}

/// 大小写
void foo2() {
  String name = 'yongKun1993';
  name.toUpperCase();  // YONGKUN1993
  name.toLowerCase();  // yongkun1993
}

/// 校验字符串中 是否包含XX 等逻辑
void foo3() {
  String name = 'yongKun1993';
  var a = name.startsWith('y'); // true, 是否以 y 开头
  var b = name.endsWith('T');   // false，是否以 T 结尾
  var c = name.contains('99');  // true, 是否包含 '99'
}

// 替换、分割操作
void foo4() {
  String name = 'yongkun 1993';
  // name.replaceAll('from', 'replace');
  var a = name.replaceAll(' ', '_');  // yongkun_1993
  var b = name.split(' ');  // [yong kun, 1993] 分割成数组
}
