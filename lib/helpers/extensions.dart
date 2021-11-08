import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  TextTheme get sTextTheme => theme.primaryTextTheme;
  ColorScheme get colorScheme => theme.colorScheme;

}
