import 'package:bloc/bloc.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';
import 'package:pixel_co_payment_practice/features/payment/data/repos/payment_repo.dart';

part 'stripe_cubit_state.dart';

class StripeCubitCubit extends Cubit<StripeCubitState> {
  StripeCubitCubit(this.paymentRepo) : super(StripeCubitInitial());

  final PaymentRepo paymentRepo;

  Future makePayment(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await paymentRepo.makePayment(paymentIntentInputModel);

    response.fold(
      (failure) => emit(
        StripeErrorState(
          errMsg: failure.toString(),
        ),
      ),
      (success) => emit(
        StripeSuccessState(),
      ),
    );
  }
}
