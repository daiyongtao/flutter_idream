import 'package:flutter/material.dart';
import 'package:flutter_idream/timer/stop_watch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: _buildActions(),
      ),
      body: Column(
        children: [
          _buildStopwatchPanel(),
          _buildRecordPanel(),
          _buildTools()
        ],
      ),
    );
  }

  List<Widget> _buildActions(){
    return [
      PopupMenuButton<String>(
        itemBuilder: _buildItem,
        onSelected: _onSelectItem,
        icon: const Icon( Icons.more_vert_outlined, color: Color(0xff262626)),
        position:PopupMenuPosition.under,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
      )
    ];
  }

  List<PopupMenuEntry<String>> _buildItem(BuildContext context) {
    return const [
      PopupMenuItem<String>(
        value: "设置",
        child: Center(child: Text("设置")),
      )
    ];
  }

  void _onSelectItem(String value) {

  }

  Widget _buildStopwatchPanel(){
    // MediaQuery.of(context).size 可以获取屏幕的尺寸
    double radius = MediaQuery.of(context).size.shortestSide/2*0.75;
    Duration duration = Duration(minutes: 3, seconds: 28, milliseconds: 50);
    return StopWatchWidget(
      radius: radius,
      duration: duration,
    );
  }

  Widget _buildRecordPanel(){
    return Expanded(
      child: Container(
        color: Colors.red,
      ),
    );
  }

  Widget _buildTools(){
    return Container(
      height: 80,
      color: Colors.yellow,
    );
  }
}

