import 'package:appointment_fee_calculator/features/appointment_fee/models/appointment_fee_model.dart';

class AppointmentFeeRepository {
  double calculateFee(AppointmentFeeModel model) {
    if (model.consultationFee < 0) {
      throw ArgumentError('Consultation fee cannot be negative');
    }

    if (model.serviceFee < 0) {
      throw ArgumentError('Service fee cannot be negative');
    }

    if (model.serviceCount < 0) {
      throw ArgumentError('Service count cannot be negative');
    }

    return model.consultationFee + (model.serviceFee * model.serviceCount);
  }
}
