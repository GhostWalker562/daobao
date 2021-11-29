import 'package:daobao/src/injectable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';

void main() async {
  configureDependencies();
  await dotenv.load(fileName: 'dotenv');
  runApp(const MyApp());
}
