import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/choose_password/choose_password_component.dart';

class ChoosePasswordModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ChoosePasswordComponent()),
  ];
}
