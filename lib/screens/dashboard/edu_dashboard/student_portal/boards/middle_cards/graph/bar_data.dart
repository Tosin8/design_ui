import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/graph/individual_bar.dart';

class BarData {
  final double sunActivity; 
  final double monActivity; 
  final double tueActivity; 
  final double wedActivity; 
  final double thurActivity; 
  final double friActivity; 
  final double satActivity;

  BarData({
    required this.sunActivity, 
  required this.monActivity,
   required this.tueActivity,
    required this.wedActivity,
     required this.thurActivity,
      required this.friActivity,
       required this.satActivity}); 

  List<IndividualBar> barData = []; 

  // initialize bar data
  void initializeBarData() {
    barData = [
    IndividualBar(x: 0 , y: sunActivity), 
     IndividualBar(x: 1 , y: monActivity),  
     IndividualBar(x: 2 , y: tueActivity),  
     IndividualBar(x: 3 , y: wedActivity), 
      IndividualBar(x: 4 , y: thurActivity),  
      IndividualBar(x: 5 , y: friActivity), 
       IndividualBar(x: 6 , y: satActivity), 
    ]; 
  }
}