import 'package:appointment_fee_calculator/features/appointment_fee/data/appointment_fee_repository.dart';
import 'package:appointment_fee_calculator/features/appointment_fee/models/appointment_fee_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AppointmentFeeRepository repository;

  setUp(() {
    repository = AppointmentFeeRepository();
  });

  test('should calculate total fee correctly', () {
    final model = AppointmentFeeModel(
      consultationFee: 500,
      serviceFee: 100,
      serviceCount: 2,
    );

    final result = repository.calculateFee(model);

    expect(result, 700);
  });
}
