abstract class AppointmentFeeEvent {}

class CalculateFeeEvent extends AppointmentFeeEvent {
  final double consultationFee;
  final double serviceFee;
  final int serviceCount;

  CalculateFeeEvent({
    required this.consultationFee,
    required this.serviceFee,
    required this.serviceCount
  });
}