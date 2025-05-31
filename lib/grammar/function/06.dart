
// 位置参数：通过一个数组 [参数1，参数2，...] 来指定顺序

// DateTime(int year,
//     [int month = 1,
//     int day = 1,
//     int hour = 0,
//     int minute = 0,
//     int second = 0,
//     int millisecond = 0,
//     int microsecond = 0]
// )

void main() {
  DateTime time1 = DateTime(1998);        // 1998-01-01 00:00:00.000
  DateTime time2 = DateTime(1998, 3, 8);  // 1998-03-08 00:00:00.000
  DateTime time3 = DateTime(1998, 3, 8, 20, 13, 50); // 1998-03-08 20:13:50.000

  // 严格按照顺序来，因为参数有默认值，所以不传递就走默认参数值
}