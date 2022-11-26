import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../core/exports.dart';

class ColChart extends StatefulWidget {
  const ColChart({Key? key, this.index = 0}) : super(key: key);
  final double index;

  @override
  State<ColChart> createState() => _ColChartState();
}

class _ColChartState extends State<ColChart> {
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      plotAreaBorderWidth: 0,
      palette: const [AppColors.secondary, AppColors.fadeColor],
      crosshairBehavior: CrosshairBehavior(
        shouldAlwaysShow: true,
        enable: true,
        lineWidth: 2.0,
        lineType: CrosshairLineType.horizontal,
      ),
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(color: Colors.transparent),
        minorGridLines: const MinorGridLines(color: Colors.transparent),
        axisLine: const AxisLine(color: Colors.transparent),
        majorTickLines: const MajorTickLines(color: Colors.transparent),
        minorTickLines: const MinorTickLines(color: Colors.transparent),
      ),
      primaryYAxis: NumericAxis(
        majorGridLines: const MajorGridLines(
          color: Colors.transparent,
        ),
        minorGridLines: const MinorGridLines(color: Colors.transparent),
        axisLine: const AxisLine(color: Colors.transparent),
        majorTickLines: const MajorTickLines(color: Colors.transparent),
        minorTickLines: const MinorTickLines(color: Colors.transparent),
      ),
      series: <ChartSeries>[
        ColumnSeries<SavingsData, String>(
          dataSource: widget.index == 0
              ? getSavingsData()
              : widget.index == 1
                  ? getSavingsData1()
                  : widget.index == 2
                      ? getSavingsData2()
                      : getSavingsData(),
          xValueMapper: (datum, index) => datum.x,
          yValueMapper: (datum, index) => datum.y,
          borderRadius: BorderRadius.circular(5.0.r),
          color: AppColors.barChartColor,
          trackColor: AppColors.grey.withOpacity(0.4),
          isTrackVisible: true,
        ),
        SplineSeries<WithdrawalData, String>(
          dataLabelSettings: const DataLabelSettings(
            isVisible: true,
            color: AppColors.primary,
          ),
          markerSettings: const MarkerSettings(
              shape: DataMarkerType.circle,
              isVisible: true,
              color: AppColors.secondary),
          dataSource: widget.index == 0
              ? getWithdrawalData()
              : widget.index == 1
                  ? getWithdrawalData1()
                  : widget.index == 2
                      ? getWithdrawalData2()
                      : getWithdrawalData(),
          xValueMapper: (datum, index) => datum.x,
          yValueMapper: (datum, index) => datum.y,
          color: AppColors.secondary,
        )
      ],
    );
  }
}

class SavingsData {
  String x;
  double y;
  SavingsData(this.x, this.y);
}

class WithdrawalData {
  String x;
  double y;
  WithdrawalData(this.x, this.y);
}

dynamic getSavingsData() {
  List<SavingsData> getSavingsData = <SavingsData>[
    SavingsData('10:00', 0.0),
    SavingsData('12:00', 25),
    SavingsData('03:00', 65),
    SavingsData('05:00', 40),
    SavingsData('06:00', 22),
    SavingsData('08:00', 10),
  ];
  return getSavingsData;
}

dynamic getSavingsData1() {
  List<SavingsData> getSavingsData = <SavingsData>[
    SavingsData('10:00', 0.0),
    SavingsData('12:00', 11),
    SavingsData('03:00', 45),
    SavingsData('05:00', 22),
    SavingsData('06:00', 67),
    SavingsData('08:00', 88),
  ];
  return getSavingsData;
}

dynamic getSavingsData2() {
  List<SavingsData> getSavingsData = <SavingsData>[
    SavingsData('10:00', 0.0),
    SavingsData('12:00', 18),
    SavingsData('03:00', 77),
    SavingsData('05:00', 22),
    SavingsData('06:00', 52),
    SavingsData('08:00', 33),
  ];
  return getSavingsData;
}

dynamic getWithdrawalData() {
  List<WithdrawalData> withdrawdata = <WithdrawalData>[
    WithdrawalData('10:00', 0.0),
    WithdrawalData('12:00', 14),
    WithdrawalData('03:00', 30),
    WithdrawalData('05:00', 20),
    WithdrawalData('06:00', 11),
    WithdrawalData('08:00', 5),
  ];
  return withdrawdata;
}

dynamic getWithdrawalData1() {
  List<WithdrawalData> withdrawdata = <WithdrawalData>[
    WithdrawalData('10:00', 0.0),
    WithdrawalData('12:00', 22),
    WithdrawalData('03:00', 30),
    WithdrawalData('05:00', 11),
    WithdrawalData('06:00', 21),
    WithdrawalData('08:00', 5),
  ];
  return withdrawdata;
}

dynamic getWithdrawalData2() {
  List<WithdrawalData> withdrawdata = <WithdrawalData>[
    WithdrawalData('10:00', 40),
    WithdrawalData('12:00', 11),
    WithdrawalData('03:00', 32),
    WithdrawalData('05:00', 11),
    WithdrawalData('06:00', 21),
    WithdrawalData('08:00', 10),
  ];
  return withdrawdata;
}
