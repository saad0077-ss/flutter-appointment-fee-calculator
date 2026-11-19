import 'package:appointment_fee_calculator/features/appointment_fee/data/appointment_fee_repository.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/models/appointment_fee_model.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_event.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/presentation/bloc/appointment_fee_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentFeeBloc
    extends Bloc<AppointmentFeeEvent, AppointmentFeeState> {
  final AppointmentFeeRepository repository;

  AppointmentFeeBloc(this.repository) : super(AppointmentFeeInitial()) {
    on<CalculateFeeEvent>(_calculateFee);
  }

  Future<void> _calculateFee(
    CalculateFeeEvent event,
    Emitter<AppointmentFeeState> emit,
  ) async {
    try {
      final model = AppointmentFeeModel(
        consultationFee: event.consultationFee,
        serviceFee: event.serviceFee,
        serviceCount: event.serviceCount,
      );

      final total = repository.calculateFee(model);

      emit(AppointmentFeeLoaded(totalFee: total));
    } catch (e) {
      emit(AppointmentFeeError(message: e.toString()));
    }
  }
}
