import 'package:daobao/src/injectable.dart';
import 'package:flutter/material.dart';

import 'src/app.dart';

void main() async {
  configureDependencies();
  runApp(const MyApp());
}
