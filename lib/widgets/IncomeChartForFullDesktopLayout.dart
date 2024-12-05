import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartForFullDesktopLayout extends StatelessWidget {
  const IncomeChartForFullDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  dynamic getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            value: 40,
            color: const Color(0xff208BC7),
            showTitle: false,
            radius: 30),
        PieChartSectionData(
            value: 25,
            color: const Color(0xff4DB7F2),
            showTitle: false,
            radius: 30),
        PieChartSectionData(
            value: 20,
            color: const Color(0xff064060),
            showTitle: false,
            radius: 30),
        PieChartSectionData(
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: false,
            radius: 30)
      ],
    );
  }
}
