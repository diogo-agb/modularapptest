import 'package:modularapp/app/modules/yellow/yellow_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'yellow_page.dart';

class YellowModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => YellowStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => YellowPage()),
  ];
}
