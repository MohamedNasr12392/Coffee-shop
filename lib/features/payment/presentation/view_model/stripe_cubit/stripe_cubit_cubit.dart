import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';
import 'package:pixel_co_payment_practice/features/payment/data/repos/payment_repo.dart';

part 'stripe_cubit_state.dart';

class StripeCubit extends Cubit<StripeCubitState> {
  StripeCubit(this.paymentRepo) : super(StripeCubitInitial());

  final PaymentRepo paymentRepo;

  int activeIndex = 0;

  Future makePayment(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await paymentRepo.makePayment(paymentIntentInputModel);

    response.fold(
      (failure) => emit(
        StripeErrorState(
          errMsg: failure.errMsg.toString(),
        ),
      ),
      (success) => emit(
        StripeSuccessState(),
      ),
    );
  }

  void changePayment(int index) {
    activeIndex = index;
    emit(ChangePaymentState(index: index));
    print('Active Index changed to $index');
    log('Active Index changed to $index');
  }

  @override
  void onChange(Change<StripeCubitState> change) {
    super.onChange(change);
    log(change.toString());
  }
}
