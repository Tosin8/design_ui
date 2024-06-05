import 'package:ui_design/screens/dashboard/edu_dashboard/student_portal/boards/middle_cards/graph/individual_bar.dart';

class BarData {
  final double sunActivity; 
  final double monActivity; 
  final double tueActivity; 
  final double wedActivity; 
  final double thurActivity; 
  final double friActivity; 
  final double satActivity;

  BarData({required this.sunActivity, required this.monActivity, required this.tueActivity, required this.wedActivity, required this.thurActivity, required this.friActivity, required this.satActivity}); 

  List<IndividualBar> barData = []; 

  // initialize bar data
  void initializeBarData() {
    barData = [
    IndividualBar(x: 0 , y: sunActivity), 
     IndividualBar(x: 0 , y: monActivity),  
     IndividualBar(x: 0 , y: tueActivity),  
     IndividualBar(x: 0 , y: wedActivity), 
      IndividualBar(x: 0 , y: thurActivity),  
      IndividualBar(x: 0 , y: friActivity), 
       IndividualBar(x: 0 , y: satActivity), 
    ]; 
  }
}