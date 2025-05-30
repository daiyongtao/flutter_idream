
// 数组
void foo_list() {
  List<String> list = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  list.add('拾');
  list.add('佰');
  list.addAll(['仟', '萬', '亿']);
  list.insert(2, '点');
  list.insertAll(2, ['横', '撇']);
  print(list);  // [零, 壹, 横, 撇, 点, 贰, 叁, 肆, 伍, 陆, 柒, 捌, 玖, 拾, 佰, 仟, 萬, 亿]

  list.removeAt(2);
  list.removeAt(2);
  list.remove('点');
  print(list);  // [零, 壹, 贰, 叁, 肆, 伍, 陆, 柒, 捌, 玖, 拾, 佰, 仟, 萬, 亿]

  list[6] = '六';
  print(list);
}

void main() {
  foo_list();
}