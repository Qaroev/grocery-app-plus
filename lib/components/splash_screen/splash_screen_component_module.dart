import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/splash_screen/splash_screen_component.dart';

class SplashScreenModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SplashScreenComponent()),
  ];
}
