import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/phone_number_component/phone_number_component.dart';

class PhoneNumberModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => PhoneNumberComponent()),
  ];
}
