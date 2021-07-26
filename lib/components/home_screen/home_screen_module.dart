import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/home_screen/home_screen_componet.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => HomeComponent()),
  ];
}
