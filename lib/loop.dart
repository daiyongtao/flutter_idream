

void foo() {
  List<String> list = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Iterator<String> it = list.iterator;
  while(it.moveNext()){
    print(it.current);
  }

  // 等价于：
  List<String> list1 = ['零', '壹', '贰', '叁', '肆', '伍', '陆', '柒', '捌', '玖'];
  Iterator<String> it1 = list1.iterator;
  for(;it1.moveNext();){
    print(it1.current);
  }
}

void foo2() {
  int sum = 0;
  for (int i = 0; i < 10; i++) {
    if(i.isEven){// 如果是偶数
      // return; //tag1
      continue;
    }
    sum += i; //tag2
    print("第 $i 次循环，计入 sum");
  }
  print("sum: $sum"); // tag3
}

void main() {
  foo2();
}