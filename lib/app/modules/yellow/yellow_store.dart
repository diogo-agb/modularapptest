import 'package:mobx/mobx.dart';

part 'yellow_store.g.dart';

class YellowStore = _YellowStoreBase with _$YellowStore;
abstract class _YellowStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}