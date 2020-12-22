import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:mondaymorning/app/locator.config.dart';

/// A global [GetIt] instance used to inject dependencies
final locator = GetIt.instance;

/// Registers required dependencies using [GetIt].
/// Needs to be called in the main function before [runApp()].
@InjectableInit()
void setupLocator({String environment}) => $initGetIt(
      locator,
      environment: environment,
    );

/// Defines configuration for multiple environments.
abstract class Env {
  /// Pass this as an argument to the environment parameter of [setupLocator()]
  /// to register development dependencies.
  static const dev = 'dev';

  /// Pass this as an argument to the environment parameter of [setupLocator()]
  /// to register production dependencies.
  static const prod = 'prod';
}
