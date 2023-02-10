import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
//import 'package:pie_chart/pie_chart.dart';

class PieChartWidget extends StatelessWidget {
  final double salesValue;

  const PieChartWidget(this.salesValue, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1.0,
        child: Stack(
          children: <Widget>[
            PieChart(
              PieChartData(
                sections: _chartSections(salesValue),
                centerSpaceRadius: 80.0,
                startDegreeOffset: -90.0,
              ),
            ),
            Center(
              child: Text(
                '${salesValue.toInt()}%',
                style: TextStyle(
                  color: Colors.red.shade600,
                  fontSize: 36,
                ),
              ),
            )
          ],
        ));
  }

  List<PieChartSectionData> _chartSections(double salesValue) {
    final List<PieChartSectionData> list = [];
    var data;
    for (int i = 0; i <= 19; i++) {
      const double radius = 40.0;
      if (i < (salesValue / 5).toInt()) {
        data = PieChartSectionData(
          color: Colors.red.shade600,
          value: 100,
          radius: radius,
          title: '',
        );
      } else {
        data = PieChartSectionData(
          color: Colors.red.shade100,
          value: 100,
          radius: radius,
          title: '',
        );
      }
      list.add(data);
    }
    return list;
  }
}
