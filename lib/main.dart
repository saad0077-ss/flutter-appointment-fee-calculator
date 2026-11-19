import 'package:appointment_fee_calculator/features/appointment_fee/presentation/pages/calculater_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Fee Calculator',
      home : AppointmentFeeCalculator()
    );
  }
}