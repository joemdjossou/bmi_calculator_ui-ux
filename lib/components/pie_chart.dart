import 'package:flutter/material.dart';
import 'package:flutter_pie_chart/flutter_pie_chart.dart';

class PieChart extends StatelessWidget {
  PieChart({@required this.selected});

  final String? selected;
  final List<Pie> pies = [
    Pie(color: const Color(0xFFFDCA00), proportion: 8),
    Pie(color: const Color(0xFF38FD00), proportion: 8),
    Pie(color: const Color(0xFFF13536), proportion: 8),
  ];

  @override
  Widget build(BuildContext context) {
    GetSelected getS = GetSelected(select: selected);
    print(selected);
    return Container(
      width: 200.0,
      height: 200.0,
      child: Center(
        child: FlutterPieChart(
          pies: pies,
          selected: getS.getSelected(),
          animationDuration: Duration(seconds: 3),
        ),
      ),
    );
  }
}


class GetSelected {
  GetSelected({@required this.select});

  final String? select;

  int getSelected () {
    if(select == 'UnderWeight') {
      return 0;
    }else if(select == 'Normal') {
      return 1;
    }else if(select == 'Overweight') {
      return 2;
    }else {
      return 0;
    }
  }
}
