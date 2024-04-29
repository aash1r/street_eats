import 'package:fl_chart/fl_chart.dart';
import 'package:street_eats_vendor/helpers/utils/export.dart';

class LineTiles {
  static getTitleData() => FlTitlesData(
        show: true,
        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        rightTitles:
            const AxisTitles(sideTitles: SideTitles(showTitles: false)),
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 22,
            getTitlesWidget: (value, meta) {
              switch (value.toDouble()) {
                case 0.5:
                  return const Text('Week 1');
                case 1.5:
                  return const Text('Week 2');
                case 2.5:
                  return const Text('Week 3');
                case 3.5:
                  return const Text('Week 4');
              }
              return const Text('');
            },
          ),
        ),
      );
}
