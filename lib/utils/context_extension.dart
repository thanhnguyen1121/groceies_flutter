import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension AppContext on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }
}