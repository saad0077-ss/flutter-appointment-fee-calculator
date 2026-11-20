import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_bloc.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_event.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_state.dart';
import 'package:appointment_fee_calculator/shared/app_bar.dart';
import 'package:appointment_fee_calculator/shared/custom_button.dart';
import 'package:appointment_fee_calculator/shared/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentFeeCalculator extends StatefulWidget {
  const AppointmentFeeCalculator({super.key});

  @override
  State<AppointmentFeeCalculator> createState() =>
      _AppointmentFeeCalculatorState();
}

class _AppointmentFeeCalculatorState extends State<AppointmentFeeCalculator> {
  final consultationController = TextEditingController();
  final serviceController = TextEditingController();
  final counterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: 'Appointment Fee Calculator'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CustomTextFormField(
              controller: consultationController,
              hindText: 'Consultation Fee',
              labelText: 'Consultation Fee',
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              hindText: 'Service Fee',
              controller: serviceController,
              labelText: 'Service Fee',
            ),
            const SizedBox(height: 15),
            CustomTextFormField(
              hindText: 'Number of Services',
              controller: counterController,
              labelText: 'Number of Services',
            ),
            const SizedBox(height: 20),
            CustomButton(
              title: 'Calculate',
              onPressed: () {
                context.read<AppointmentFeeBloc>().add(
                  CalculateFeeEvent(
                    consultationFee: double.parse(consultationController.text),
                    serviceFee: double.parse(serviceController.text),
                    serviceCount: int.parse(counterController.text),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            BlocBuilder<AppointmentFeeBloc, AppointmentFeeState>(
              builder: (context, state) {
                if (state is AppointmentFeeLoaded) {
                  return Text(
                    'Total Fee: ₹${state.totalFee}',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  );
                }
                if (state is AppointmentFeeError) {
                  return Text(
                    state.message,
                    style: const TextStyle(color: Colors.red),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
