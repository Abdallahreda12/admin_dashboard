import 'package:admin_dashboard/utils/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChartForSpecificDesktopLayout extends StatelessWidget {
  const IncomeChartForSpecificDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(context),
      ),
    );
  }

  dynamic getChartData(BuildContext context) {
    return PieChartData(
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
            title: "40%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            value: 40,
            color: const Color(0xff208BC7),
            showTitle: true,
            radius: 50),
        PieChartSectionData(
            title: "25%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            value: 25,
            color: const Color(0xff4DB7F2),
            showTitle: true,
            radius: 50),
        PieChartSectionData(
            title: "20%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            value: 20,
            color: const Color(0xff064060),
            showTitle: true,
            radius: 50),
        PieChartSectionData(
            title: "22%",
            titleStyle: AppStyles.styleMedium16(context).copyWith(color: Colors.white),
            value: 22,
            color: const Color(0xffE2DECD),
            showTitle: true,
            radius: 50)
      ],
    );
  }
}
