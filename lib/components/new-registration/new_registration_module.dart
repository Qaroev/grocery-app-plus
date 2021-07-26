import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/new-registration/new_registration_component.dart';

class NewRegistrationModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => NewRegistrationComponent()),
  ];
}
