import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homework2/data/app_color.dart';

class AppTextStyle {
  static const TextStyle h1 = TextStyle(
    color: AppColor.kTextColor,
    fontSize: 34,
  );
  static const TextStyle h2 = TextStyle(
    color: AppColor.kTextColor,
    fontSize: 17,
    fontWeight: FontWeight.bold
  );
  static const TextStyle h3 = TextStyle(
    color: AppColor.kTextColor,
    fontSize: 17,
  );
  static const TextStyle h4 = TextStyle(
    color: AppColor.kTextColor,
    fontSize: 11,
    fontWeight: FontWeight.bold
  );
  static const TextStyle h5 = TextStyle(
    color: AppColor.ktime,
    fontSize: 13,
  );
}
