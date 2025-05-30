void main() {
  double result = bmi(weight: 74, height: 1.62);
  bool normal = isNormal(bmi: result);
  print(normal ? "健康" : "不健康");
}

/// 是否健康：在 18.5 ~ 23.9 之间，表示正常。
bool isNormal({required double bmi}) {
  return bmi >= 18.5 && bmi <= 23.9;
}

/// 健康指数: 体重(kg)/身高(m)的平方
double bmi({required double weight, required double height}) {
  return weight / (height * height);
}