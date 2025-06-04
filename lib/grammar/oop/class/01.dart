
class Person {

  double? _height;
  String? _name;

  double get height => _height ?? 1.65;

  String get name => _name ?? "";

  set name(String? value) {
    if (value == null) {
      _name = "";
    } else {
      _name = value;
    }
  }

  // 真有 set 方法，外部直接调用.height就是调用到这里，但是写这个方法时，代码不会有提示
  set height(double? value) {
    if (value == null) {
      _height = 1.65;
    } else {
      _height = value;
    }
  }

  String desc() {
    return "name is ${_name}, height is $height";;
  }
}

void foo() {
  // Person p = Person();
  // p.name = "哈哈";
  // p.height = 1.62;
  // print(p.desc());
}

class V2 {
  final String name;
  final double height;
  String? _optionString;

  // 构造函数，1.如果参数里没有可选项，必须都要带上 required 否则报错：
  // The parameter 'name' can't have a value of 'null' because of its type, but the implicit default value is 'null'.
  // Try adding either an explicit non-'null' default value or the 'required' modifier.
  // V2({required this.name, required this.height});

  // 2.如果参数里有可选参数，optionString，就不需要加上required，外部调用时，没有参数名
  V2(this.name, this.height, {String? optionString}) : _optionString = optionString;
}

void main() {

  V2("haha", 1.65);
  V2("拉拉", 1.89, optionString: "可选参数");

}