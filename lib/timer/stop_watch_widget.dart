
import 'package:flutter/material.dart';
import 'package:flutter_idream/timer/stop_watch_painter.dart';

class StopWatchWidget extends StatelessWidget {
  final double radius;
  final Duration duration;
  final Color? themeColor;
  final TextStyle? textStyle;
  final Color scaleColor;

  const StopWatchWidget({
    Key? key,
    required this.radius,
    required this.duration,
    this.scaleColor = const Color(0xffDADADA),
    this.textStyle,
    this.themeColor
  }) : super(key: key);

  /// 获取通用的文本style
  TextStyle get commonStyle => TextStyle(
    fontSize: radius / 3,
    fontWeight: FontWeight.w200,
    color: const Color(0xff343434),
  );

  @override
  Widget build(BuildContext context) {
    TextStyle style = textStyle ?? commonStyle;
    Color themeColor = this.themeColor ?? Theme.of(context).primaryColor;
    return CustomPaint(
      painter: StopWatchPainter(
          duration: duration,
          themeColor: themeColor,
          scaleColor: scaleColor,
          textStyle: style),
      size: Size(radius * 2, radius * 2),
    );
  }
}

