import 'dart:js_util';

import 'package:injectable/injectable.dart';
import 'moralis_interop.dart' as moralisJS;

@Singleton()
class Moralis {
  Future<void> login() async => await promiseToFuture<void>(moralisJS.login());

  Future<void> logout() async =>
      await promiseToFuture<void>(moralisJS.logout());

  Future<bool> isLoggedIn() async =>
      await promiseToFuture<bool>(moralisJS.isLoggedIn());
}
