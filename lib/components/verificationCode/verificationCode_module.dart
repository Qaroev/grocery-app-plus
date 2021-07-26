import 'package:flutter_modular/flutter_modular.dart';
import 'package:groceryplusapp/components/verificationCode/verificationCode_component.dart';

class VerificationCodeModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => VerificationCodeComponent()),
  ];
}
