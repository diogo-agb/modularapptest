import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  void initState() {
    Modular.to.navigate('yellow');
    print(Modular.to.path);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Scaffold(
        body: RouterOutlet(),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          selectedFontSize: 20,
          selectedIconTheme: IconThemeData(size: 30),
          unselectedIconTheme: IconThemeData(size: 20),
          onTap: (id) {
            controller.setCurrentIndex(id);

            if (id == 0) {
              Modular.to.navigate('yellow');
            } else if (id == 1) {
              Modular.to.navigate('black');
            }
          },
          currentIndex: controller.getCurrentIndex,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Yellow'),
            BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'Black'),
          ],
        ),
      );
    });
  }
}
