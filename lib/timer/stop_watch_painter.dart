
import 'package:flutter/cupertino.dart';

class StopWatchPainter extends CustomPainter {
  /// 时长
  final Duration duration;
  /// 主题色
  final Color themeColor;
  /// 刻度色
  final Color scaleColor;
  /// 文本样式
  final TextStyle textStyle;

  StopWatchPainter({required this.duration, required this.themeColor, required this.scaleColor, required this.textStyle});


  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }


  // 是否允许重绘
  @override
  bool shouldRepaint(covariant StopWatchPainter oldDelegate) {
    return oldDelegate.duration != duration ||
        oldDelegate.textStyle != textStyle ||
        oldDelegate.themeColor != themeColor ||
        oldDelegate.scaleColor != scaleColor;
  }
}