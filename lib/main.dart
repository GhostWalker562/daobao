import 'package:daobao/src/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'src/app.dart';

void main() async {
  configureDependencies();
  if (!kIsWeb) await dotenv.load();
  runApp(const MyApp());
}
