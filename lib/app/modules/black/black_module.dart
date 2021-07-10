import 'package:flutter_modular/flutter_modular.dart';
import '../black/black_store.dart';
import '../black/black_page.dart';

class BlackModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BlackStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => BlackPage()),
  ];
}
