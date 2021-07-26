import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/splash_screen/splash_screen_component_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/',
      module: SplashScreenModule(),
    ),
  ];
}
