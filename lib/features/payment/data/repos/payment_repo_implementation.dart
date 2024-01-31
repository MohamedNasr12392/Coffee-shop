import 'package:dartz/dartz.dart';
import 'package:pixel_co_payment_practice/core/errors/failures.dart';
import 'package:pixel_co_payment_practice/core/utils/stripe_service.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';
import 'package:pixel_co_payment_practice/features/payment/data/repos/payment_repo.dart';

class PaymentRepoImplement implements PaymentRepo {
  final StripeService stripeService;

  PaymentRepoImplement({required this.stripeService});

  @override
  Future<Either<Failure, void>> makePayment(
      PaymentIntentInputModel paymentIntentInputModel) async {
    try {
      await stripeService.makePayment(paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errMsg: e.toString()));
    }
  }
}
