import 'package:flutter_modular/flutter_modular.dart';
import 'package:modularapp/app/modules/black/black_page.dart';
import 'package:modularapp/app/modules/black/black_store.dart';
import 'package:modularapp/app/modules/yellow/yellow_page.dart';
import 'package:modularapp/app/modules/yellow/yellow_store.dart';
import '../home/home_store.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
    Bind.lazySingleton((i) => YellowStore()),
    Bind.lazySingleton((i) => BlackStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => HomePage(),
      children: [
        ChildRoute('/yellow', child: (_, args) => YellowPage()),
        ChildRoute('/black', child: (_, args) => BlackPage()),
      ],
    ),
  ];
}
