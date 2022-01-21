import 'package:car_rent/style/colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle mainTitleStyle = const TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
  );

  static TextStyle secondaryTitleStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );

  static TextStyle priceTextStyle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w400,
    color: AppColor.primaryColor,
  );

  static TextStyle detailsTextStyle = const TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold
  );
}
