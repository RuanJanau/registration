import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:registration/src/app_module.dart';
import 'package:registration/src/app_widgets.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
