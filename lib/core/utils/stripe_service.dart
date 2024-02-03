import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:pixel_co_payment_practice/core/constants/api_keys.dart';
import 'package:pixel_co_payment_practice/core/constants/strings.dart';
import 'package:pixel_co_payment_practice/core/utils/api_service.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/ephemeral_key_model/ephemeral_key.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/init_payment_sheet_input_model.dart';
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

  Future<EphemeralKeyModel> createEphemeralKey(
      {required String customerId}) async {
    var response = await apiService.apiPost(
      url: 'https://api.stripe.com/v1/ephemeral_keys',
      contentType: Headers.formUrlEncodedContentType,
      body: {
        'customer': customerId,
      },
      token: ApiKeys.secretKey,
      headers: {
        'Authorization': "Bearer ${ApiKeys.secretKey}",
        'Stripe-Version': '2023-10-16',
      },
    );

    var ephemeralKeyModel = EphemeralKeyModel.fromJson(response.data);
    return ephemeralKeyModel;
  }

  Future initPaymentSheet(
      {required InitPaymentSheetInputModel initPaymentSheetInputModel}) async {
    print('ephemeralKey');
    print(initPaymentSheetInputModel.ephemeralKeySecret);
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentSheetInputModel.clientSecret,
        merchantDisplayName: 'Mohamed Nasr',
        customerEphemeralKeySecret:
            initPaymentSheetInputModel.ephemeralKeySecret,
        customerId: initPaymentSheetInputModel.customerId,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(PaymentIntentInputModel paymentIntentInputModel) async {
    print(paymentIntentInputModel.customerId);
    var paymentIntentModel = await createPaymentIntent(paymentIntentInputModel);
    var customerEphemeralKey = await createEphemeralKey(
        customerId: paymentIntentInputModel.customerId);
    await initPaymentSheet(
      initPaymentSheetInputModel: InitPaymentSheetInputModel(
        clientSecret: paymentIntentModel.clientSecret!,
        customerId: paymentIntentInputModel.customerId,
        ephemeralKeySecret: customerEphemeralKey.secret!,
      ),
    );

    await displayPaymentSheet();
  }
}
