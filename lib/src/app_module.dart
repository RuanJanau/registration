import 'package:flutter_modular/flutter_modular.dart';
import 'package:registration/src/modules/home/view/home_view.dart';
import 'package:registration/src/modules/login/login_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: ((context, args) => const HomeView())),
        ModuleRoute('/login', module: LoginModule())
      ];
}
