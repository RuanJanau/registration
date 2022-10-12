import 'package:flutter_modular/flutter_modular.dart';
import 'package:registration/src/modules/home/view/home_view.dart';

class HomeModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(Modular.initialRoute,
            child: ((context, args) => const HomeView()))
      ];
}
