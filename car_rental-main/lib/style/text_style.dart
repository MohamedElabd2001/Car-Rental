import 'package:car_rental/style/color.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle maintitleStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  static TextStyle secondaryTitleStyle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColor.primaryColor,
  );


  static TextStyle priceTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
    color: AppColor.primaryColor,
  );


  static TextStyle detailsTextStyle = TextStyle(
    fontSize: 34,
    fontWeight: FontWeight.bold,
  );
}