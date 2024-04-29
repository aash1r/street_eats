import 'package:fl_chart/fl_chart.dart';

import '../../utils/export.dart';
import 'line_tiles.dart';

class CustomLineChart extends StatelessWidget {
  const CustomLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, right: 10, bottom: 10),
      // clipBehavior: Clip.hardEdge,
      height: 100.h,
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.grayColor),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: LineChart(
        LineChartData(
            borderData: FlBorderData(show: false),
            minX: 0,
            maxX: 4,
            minY: 0,
            maxY: 100,
            titlesData: LineTiles.getTitleData(),
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false,
              getDrawingHorizontalLine: (value) {
                return const FlLine(color: AppColors.grayColor, strokeWidth: 1);
              },
            ),
            lineBarsData: [
              LineChartBarData(
                  spots: [
                    const FlSpot(0, 80),
                    const FlSpot(0.5, 60.5),
                    const FlSpot(1, 80),
                    const FlSpot(1, 30),
                    const FlSpot(1.8, 70),
                    const FlSpot(2, 55),
                    const FlSpot(2.2, 60),
                    const FlSpot(2.6, 55),
                    const FlSpot(2.8, 60),
                    const FlSpot(3, 30),
                    const FlSpot(3.5, 50),
                    const FlSpot(3.8, 30),
                    const FlSpot(4, 26),
                  ],
                  gradient: AppColors.gradient,
                  barWidth: 3,
                  dotData: const FlDotData(show: false),
                  isCurved: true)
            ]),
      ),
    );
  }
}
