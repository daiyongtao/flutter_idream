
// 定义了一个 Operation 类型，表示一种入参是 double ，返回值是 double 的函数。
typedef Operation = double Function(double);

double square(double a) {
  return a * a;
}

double cube(double a) => a * a * a;

// 疑问：这样做的意义是什么？
// 只要是 入参是 double ，返回值也是 double 的函数，都可以赋值给 op
// op 成了一个对象，【函数】也可以作为【对象】来处理
// 后续在项目中，可能会有类似需要处理的逻辑

double add(double a, double b, {Operation? op}) {
  if (op == null) return a + b;
  return op(a) + op(b);
}

main(){
  Operation op = square;

  op(10); // 100
  op.call(10); // 100

  op = cube; // tag1
  op(10); // 1000

  // square 作为 op 的参数，则表示计算 3 、4 的平方和。
  double result = add(3, 4, op: square); // 9 + 16 = 25

  double result2 = add(3, 4, op: (double e) => e * e * e);
  // 3*3*3 + 4*4*4 = 91
}

// 通过 函数类型 把函数对象化，可以更方便指代和操作。