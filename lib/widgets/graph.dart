import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Graph extends StatelessWidget {
  const Graph({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(10),
      height: MediaQuery.of(context).size.height * .5,
      // width: MediaQuery.of(context).size.width * .95,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.purple, width: 2),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0xFFB9F6CA),
            spreadRadius: 1,
            blurRadius: 10,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        title: ChartTitle(text: 'No. Of Moons'),
        legend:
        Legend(isVisible: true, position: LegendPosition.bottom),
        series: <LineSeries<SalesData, String>>[
          LineSeries<SalesData, String>(
            // Bind data source
            dataSource: <SalesData>[
              SalesData('Mercury', 0),
              SalesData('Venus', 0),
              SalesData('Earth', 1),
              SalesData('Mars', 2),
              SalesData('Jupiter', 79),
              SalesData('Saturn', 82),
              SalesData('Uranus', 27),
              SalesData('Neptune', 14),
              SalesData('Pluto', 5),
            ],
            xAxisName: 'No. Of Moons',
            yAxisName: 'Planets',
            xValueMapper: (SalesData sales, _) => sales.year,
            yValueMapper: (SalesData sales, _) => sales.sales,
          ),
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}