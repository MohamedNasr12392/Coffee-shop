import 'package:dartz/dartz.dart';
import 'package:pixel_co_payment_practice/core/errors/failures.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';

abstract class PaymentRepo {
  Future<Either<Failure, void>> makePayment(
      PaymentIntentInputModel paymentIntentInputModel);
}
