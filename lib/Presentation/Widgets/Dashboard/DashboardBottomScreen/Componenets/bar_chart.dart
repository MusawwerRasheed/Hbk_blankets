import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hbk/Data/DataSource/Static/colors_pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
   
  import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(

      height: 300, // Adjust the height as needed
      child: SfCartesianChart(
        
        primaryXAxis: CategoryAxis(
          majorGridLines: MajorGridLines(width: 0),  
        ),
        primaryYAxis: NumericAxis(
          majorGridLines: MajorGridLines(width: 0.5),
        ),
        series: <ChartSeries>[
          ColumnSeries<Map<String, dynamic>, String>(
            dataSource: <Map<String, dynamic>>[
              {'day': 'Mon', 'value1': 150, 'value2': 450},
              {'day': 'Tue', 'value1': 75, 'value2': 125},
              {'day': 'Wed', 'value1': 60, 'value2': 110},
              {'day': 'Thu', 'value1': 550, 'value2': 635},
              {'day': 'Fri', 'value1': 520, 'value2': 180},
              {'day': 'Sat', 'value1': 160, 'value2': 240},
              {'day': 'Sun', 'value1': 140, 'value2': 210},
            ],
            xValueMapper: (Map<String, dynamic> data, _) => data['day'],
            yValueMapper: (Map<String, dynamic> data, _) => data['value1'],
            name: 'Pending',
            color: Color.fromARGB(255, 219, 235, 243), 
             borderRadius: BorderRadius.circular(3),
            
          ),
          ColumnSeries<Map<String, dynamic>, String>(
            dataSource: <Map<String, dynamic>>[
              {'day': 'Mon', 'value1': 200, 'value2': 300},
              {'day': 'Tue', 'value1': 250, 'value2': 350},
              {'day': 'Wed', 'value1': 520, 'value2': 520},
              {'day': 'Thu', 'value1': 270, 'value2': 670},
              {'day': 'Fri', 'value1': 600, 'value2': 670},
              {'day': 'Sat', 'value1': 330, 'value2': 430},
              {'day': 'Sun', 'value1': 280, 'value2': 380},
            ],
            xValueMapper: (Map<String, dynamic> data, _) => data['day'],
            yValueMapper: (Map<String, dynamic> data, _) => data['value2'],
            name: 'Completed',
            color: AppColors.primaryColor, 
             borderRadius: BorderRadius.circular(3),
          ),
        ],
        legend: Legend(isVisible: true, position: LegendPosition.bottom),
        borderWidth: 0.2, 
        borderColor: Colors.white,
     
      ),
    );
  }
}
