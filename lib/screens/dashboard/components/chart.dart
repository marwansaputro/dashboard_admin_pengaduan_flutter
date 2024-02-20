import 'package:admin/layout/padding.dart';
import 'package:admin/value/theme.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              sectionsSpace: 0,
              centerSpaceRadius: 70,
              startDegreeOffset: -90,
              sections: paiChartSelectionData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: defaultPadding),
                Text(
                  "29.1",
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                        color: darkblue,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                SizedBox(height: 3),
                Text(
                  "of 128",
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: black, fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

List<PieChartSectionData> paiChartSelectionData = [
  PieChartSectionData(
    color: primaryGreen,
    value: 25,
    showTitle: false,
    radius: 25,
  ),
  PieChartSectionData(
    color: primaryColor,
    value: 20,
    showTitle: false,
    radius: 22,
  ),
  PieChartSectionData(
    color: Yellow,
    value: 10,
    showTitle: false,
    radius: 19,
  ),
  PieChartSectionData(
    color: Red,
    value: 15,
    showTitle: false,
    radius: 16,
  ),
  PieChartSectionData(
    color: primaryColor.withOpacity(0.1),
    value: 25,
    showTitle: false,
    radius: 13,
  ),
];
