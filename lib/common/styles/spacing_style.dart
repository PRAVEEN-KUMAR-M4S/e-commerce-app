import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/size.dart';

class EAppSpacingStyle {
  EAppSpacingStyle._();
  static const EdgeInsetsGeometry paddingWithAppbar = EdgeInsets.only(
      top: EAppSizes.appbarHeight,
      left: EAppSizes.defaultSpace,
      right: EAppSizes.defaultSpace,
      bottom: EAppSizes.defaultSpace);
}
