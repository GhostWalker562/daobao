@JS()
library moralis;

import 'package:js/js.dart';

@JS('login')
external Future<void> login();

@JS('logout')
external Future<void> logout();

@JS('isLoggedIn')
external Future<bool> isLoggedIn();

@JS('upload')
external Future<String> upload(String id, dynamic base64);