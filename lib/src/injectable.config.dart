// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../services/moralis/moralis.dart' as _i4;
import '../services/web3/web3.dart' as _i5;
import '../shared/auth/auth_bloc.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.AuthBloc>(() => _i3.AuthBloc());
  gh.singleton<_i4.Moralis>(_i4.Moralis());
  gh.singleton<_i5.Web3Service>(_i5.Web3Service());
  return get;
}
