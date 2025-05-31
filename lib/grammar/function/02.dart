// 简写函数
int square(int x) => x * x;

void solution(int n, int m) {
  print("头数:$n  足数:$m");
  int y = (m - n * 2) ~/ 2;
  int x = n - y;
  print("雉数:$x  兔数:$y");
}

void main() {
  solution(85, 194);
}