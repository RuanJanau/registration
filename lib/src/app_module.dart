import 'package:flutter_modular/flutter_modular.dart';

import 'modules/login/view/login_view.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const LoginView()),
      ];
}
