part of 'stripe_cubit_cubit.dart';

abstract class StripeCubitState {}

class StripeCubitInitial extends StripeCubitState {}

class StripeLoadingState extends StripeCubitState {}

class StripeSuccessState extends StripeCubitState {}

class StripeErrorState extends StripeCubitState {
  final String errMsg;

  StripeErrorState({required this.errMsg});
}

class ChangePaymentState extends StripeCubitState {
  final int index;

  ChangePaymentState({required this.index});
}
