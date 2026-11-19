abstract class AppointmentFeeState {}

class AppointmentFeeInitial extends AppointmentFeeState {}

class AppointmentFeeLoaded extends AppointmentFeeState {
  final double totalFee;

  AppointmentFeeLoaded({required this.totalFee});
}

class AppointmentFeeError extends AppointmentFeeState {
  final String message;

  AppointmentFeeError({required this.message});
}