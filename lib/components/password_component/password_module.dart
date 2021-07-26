import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/password_component/password_component.dart';

class PasswordModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PasswordComponent()),
  ];
}
