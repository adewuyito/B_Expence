import 'package:b_expence/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BSpacing {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: BSizes.appBarHeight,
    bottom: BSizes.defaultSpacing,
    left: BSizes.defaultSpacing,
    right: BSizes.defaultSpacing,
  );
}
