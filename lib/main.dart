import 'package:appointment_fee_calculator/features/appointment_fee/data/appointment_fee_repository.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_bloc.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/pages/calculater_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final repository = AppointmentFeeRepository();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Fee Calculator',
      home: BlocProvider(
        create: (_) => AppointmentFeeBloc(repository),
        child: AppointmentFeeCalculator(),
      ),
    );
  }
}
