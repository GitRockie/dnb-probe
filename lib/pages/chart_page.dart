import 'package:flutter/material.dart';

import '../widgets/line_chart_widget.dart';

class ChartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 16),
            child: LineChartWidget(),
          ),
        ));
  }
}
