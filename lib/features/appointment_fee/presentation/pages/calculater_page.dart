import 'package:appointment_fee_calculator/shared/app_bar.dart';
import 'package:appointment_fee_calculator/shared/text_form_feild.dart';
import 'package:flutter/material.dart';

class AppointmentFeeCalculator extends StatefulWidget {
  const AppointmentFeeCalculator({super.key});

  @override
  State<AppointmentFeeCalculator> createState() => _AppointmentFeeCalculatorState();
}

class _AppointmentFeeCalculatorState extends State<AppointmentFeeCalculator> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:MyAppBar(title: 'Appointment Fee Calculator'),
      body: Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(hindText: '')
            ],
          ),
        ),
      )
    );
  }
}