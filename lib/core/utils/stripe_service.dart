import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:pixel_co_payment_practice/core/constants/api_keys.dart';
import 'package:pixel_co_payment_practice/core/utils/api_service.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_input_model.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/payment_intent_model/payment_intent_model.dart';

class StripeService {
  final ApiService apiService = ApiService();

  Future<PaymentIntentModel> createPaymentIntent(
      PaymentIntentInputModel paymentIntentInputModel) async {
    print('Request Body: ${paymentIntentInputModel.toJson()}');

    var response = await apiService.apiPost(
      url: 'https://api.stripe.com/v1/payment_intents',
      contentType: Headers.formUrlEncodedContentType,
      body: paymentIntentInputModel.toJson(),
      token: ApiKeys.secretKey,
    );
    print('zzzzzzzzzzzzzzzzzzzzzzzzzzzz');
    print(response.data);
    var paymentIntentModel = PaymentIntentModel.fromJson(response.data);
    return paymentIntentModel;
  }

  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Mohamed Nasr',
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);

    await initPaymentSheet(
        paymentIntentClientSecret: paymentIntentModel.clientSecret!);

    await displayPaymentSheet();
  }
}
