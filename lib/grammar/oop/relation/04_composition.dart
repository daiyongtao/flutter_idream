
// 组合关系：

/// 学生
class Student {
  Document document;

  Student(this.document);

  void event(String string) {
    document.records.add(string);
  }

  String callDocument() {
    return document.records.join("\n");
  }
}

/// 档案
class Document {
  List<String> records = [];

  // 添加记录
  void addRecord(String string) {
    records.add(string);
  }
}

void main() {
  Document document = Document();
  Student student = Student(document);

  student.event("2000 年 入学 XXXX 小学");
  student.event("2006 年 入学 XXXX 初中");
  student.event("2009 年 入学 XXXX 高中");
  student.event("2012 年 入学 XXXX 大学");

  String info = student.callDocument();
  print(info);
}