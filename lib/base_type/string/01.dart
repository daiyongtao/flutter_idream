
// 1.字符串定义

void main() {

}

void foo() {
  String a = 'hello, yongkun';
  String b = "hello, yongkun";
  String c = '''hello, yongkun''';
  String d = """hello, yongkun""";
}

// 根据foo2和foo3得出【结论】：相同引号包含需要转义，不同引号包含不需要转义

void foo2() {
  String a = ' hello, "yongkun" ';   //【单引号】可以直接包含【双引号】
  String b = " hello, \"yongkun\" "; // 【双引号】不可以直接包含【双引号】，需要转义
}

void foo3() {
  String a = ' hello, \'yongkun\' ';  //【单引号】包含【单引号】，需要转义
  String b = " hello, 'yongkun' ";    //【双引号】包含【单引号】，不需要转义
}

void foo4() {
  // ''' 和 """ 没有什么区别

  String a = '''
  'hello', "yongkun"
  ''';

  String b = """
  'hello', "yongkun"
  """;
}
