
// 命名参数: head 和 foot 在外部调用时，是必须写的参数名

void solution({
  required int head,
  required int foot,
}) {
  print("头数:$head  足数:$foot");
  int y = (foot - head * 2) ~/ 2;
  int x = head - y;
  print("雉数:$x  兔数:$y");
}

void main() {
  // solution(85, 194); // 报错。必须带上参数名，因为 使用了 required 关键字修饰。
  solution(head: 85, foot: 194);
  // 还可以调换入参的顺序，没必要按照 head、foot 这样，不过不建议这么做
  solution(foot: 194, head: 85);
}