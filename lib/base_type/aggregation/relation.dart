
// set 和 list 可以相互转换
void foo() {
  List<String> list = ['零', '壹', '贰', '叁','贰', '贰'];
  Set<String> set = list.toSet();
  print(set); // {零, 壹, 贰, 叁}

  List<String> list1  = set.toList();
  print(list1); // [零, 壹, 贰, 叁]
}

// 通过asMap，将list转成map
void foo1() {
  List<String> list = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Map<int, String> map = list.asMap();
  print(map); // {0: 零, 1: 壹, 2: 贰, 3: 叁, 4: 贰, 5: 贰}
}

// 结合list和set，通过 Map.fromIterables 转换成 Map
void foo2() {
  List<String> list = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖','拾','佰','仟','萬'];
  Set<int> set = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9,10,100,1000,10000};

  // Map.fromIterables(keys, values)
  Map<int, String> map = Map.fromIterables(set, list);
  print(map);
  // {0: 零, 1: 壹, 2: 贰, 3: 叁, 4: 肆, 5: 伍, 6: 陆, 7: 柒, 8: 捌, 9: 玖, 10: 拾, 100: 佰, 1000: 仟, 10000: 萬}
}

void foo3() {
  Map<String,String> dict = {'about': '关于', 'boot': '启动', 'card': '卡片'};
  dict.keys.toList();
  dict.values.toList();

  dict.keys.toSet();
  dict.values.toSet();
}

void main() {
  // foo();
  // foo1();
  // foo2();
  foo3();
}
