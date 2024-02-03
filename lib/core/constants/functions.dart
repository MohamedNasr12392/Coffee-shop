import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';
import 'package:pixel_co_payment_practice/core/constants/api_keys.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/amount_model/amount_model.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/amount_model/details.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/item_list_model/item.dart';
import 'package:pixel_co_payment_practice/features/payment/data/models/item_list_model/item_list_model.dart';
import 'package:pixel_co_payment_practice/features/payment/presentation/views/pages/thank_you_page.dart';

class MyFunctions {
  static ({AmountModel amount, ItemListModel itemList}) getTransactionData() {
    var amount = AmountModel(
      total: "51",
      currency: "USD",
      details: Details(
        subtotal: "51",
        shipping: "0",
        shippingDiscount: 0,
      ),
    );

    List<OrderItemModel> orderItems = ([
      OrderItemModel(
        currency: 'USD',
        name: 'Cappucciono',
        price: '51',
        quantity: 1,
      )
    ]);

    var orders = ItemListModel(orders: orderItems);

    return (amount: amount, itemList: orders);
  }

  static void paypalExecution(BuildContext context) {
    var transactionData = MyFunctions.getTransactionData();

    Navigator.of(context).push(MaterialPageRoute(
      builder: (BuildContext context) => PaypalCheckoutView(
        sandboxMode: true,
        clientId: ApiKeys.paypalClientId,
        secretKey: ApiKeys.paypalSecretKey,
        transactions: [
          {
            "amount": transactionData.amount.toJson(),
            "description": "The payment transaction description.",
            "item_list": transactionData.itemList.toJson(),
          }
        ],
        note: "Contact us for any questions on your order.",
        onSuccess: (Map params) async {
          log("onSuccess: $params");
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ThankYouPage(),
              ));
        },
        onError: (error) {
          log("onError: $error");
          Navigator.pop(context);
        },
        onCancel: () {
          print('cancelled:');
          Navigator.pop(context);
        },
      ),
    ));
  }
}
