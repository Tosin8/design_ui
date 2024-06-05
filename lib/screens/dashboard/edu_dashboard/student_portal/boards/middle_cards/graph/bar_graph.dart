// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/graph/bar_data.dart';


class MyBarGraph extends StatelessWidget {
  final List hourlyWorking; 
  const MyBarGraph({
    Key? key,
    // ignore: non_constant_identifier_names
    required this.hourlyWorking,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // initialize bar data
    BarData myBarData = BarData(
      sunActivity: hourlyWorking[0], 
      monActivity: hourlyWorking[1],
       tueActivity: hourlyWorking[2],
        wedActivity: hourlyWorking[3],
        thurActivity: hourlyWorking[4],
         friActivity: hourlyWorking[5],
         satActivity: hourlyWorking[6],
         
         ); 
         myBarData.initializeBarData();

    return BarChart(
      BarChartData(
        maxY: 100, 
        minY:0, 
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: false),
        titlesData: const FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)), 
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)), 
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              getTitlesWidget: getBottomTiles, showTitles: true), 
              ),
        ),
        barGroups: myBarData.barData
        .map(
          (data) => BarChartGroupData(
            x: data.x.toInt(), 
            
        barRods: [
          BarChartRodData(
            toY: data.y,
             color: Colors.blue, 
             width: 10, 
             borderRadius: BorderRadius.circular(4), 
             backDrawRodData: BackgroundBarChartRodData(show: true,
              toY: 100,
               color: Colors.grey[200]), 
             
             ),
              ], 
        ), 
        ).toList(), 
      ), 
    );
  }
}


Widget getBottomTiles (
  double value, 
  TitleMeta meta){
  const style = TextStyle(
    color: Colors.grey, 
    fontWeight: FontWeight.bold,
    fontSize: 14, 
  ); 


  Widget text;

  switch(value.toInt()){
    case 0: 
    text = const Text('Sun', style: style,); 
    break; 
    case 1: 
    text = const Text('Mon', style: style,); 
    break; 
    case 2: 
    text = const Text('Tue', style: style,); 
    break; 
    case 3: 
    text = const Text('Wed', style: style,); 
    break;
    case 4:
    text = const Text('Thu', style: style,);
    break;
    case 5:
    text = const Text('Fri', style: style,);
    break;
    case 6:
    text = const Text('Sat', style: style,);
    break;
    default: 
    text = const Text(''); 
    break;
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    child: text,); 

  } 
  