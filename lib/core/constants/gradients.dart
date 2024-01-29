import 'package:flutter/material.dart';

class MyGradients {
  static LinearGradient getCartAndSplashGradient() {
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Colors.black,
        Colors.grey,
        Color(0xFC111010),
        Color(0xFF383737),
        Color(0xFC111010),
        Colors.grey,
        Colors.black,
      ],
    );
  }

  static LinearGradient getHomeGradient(Alignment begin, Alignment end) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        const Color(0xffffffff).withOpacity(.1),
        const Color(0xFF37373C),
        const Color(0x7F313139),
        Colors.black.withOpacity(0),
        const Color(0xFF37373C),
      ],
    );
  }

  static LinearGradient getPaymentButtonGradient(
      Alignment begin, Alignment end) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        Colors.black.withOpacity(0),
        const Color(0xFF37373C),
        const Color(0x7F313139),
        Colors.black.withOpacity(0),
        const Color(0xFF37373C),
        const Color(0xFF37373C),
        Colors.black.withOpacity(0),
      ],
    );
  }
}
