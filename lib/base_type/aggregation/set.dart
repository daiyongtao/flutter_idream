
// 集合
void foo_set() {
  Set<String> set = {'零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'};
  set.add('柒'); // 没有增加，集合会查重
  print(set); // {零, 壹, 贰, 叁, 肆, 伍, 陆, 柒, 捌, 玖}

  set.addAll({'零', '元','角','分'});
  set.removeAll({'元','角','分'});
  print(set);

  // 集合操作：交集、并集、补集
  Set<String> part = {'零', '壹', '贰', '元', '角', '分'};

  // 交集：{零, 壹, 贰}
  var jiaoji = set.intersection(part); // 交集

  // 并集：{零, 壹, 贰, 叁, 肆, 伍, 陆, 柒, 捌, 玖, 元, 角, 分}
  var bingji = set.union(part);

  // 补集：{叁, 肆, 伍, 陆, 柒, 捌, 玖}
  var buji = set.difference(part);

  // 补集2：{'元', '角', '分'}
  var buj2 = part.difference(set); // part对set的补集
}

void main() {
  foo_set();
}