import 'package:flutter/material.dart';

class UiHelper {
  static Widget CustomImage({
    required String img,
    double? height,
    double? width,
  }) {
    return Image.asset(
      img,
      height: height,
      width: width,
      fit: BoxFit.contain,
    );
  }
}
