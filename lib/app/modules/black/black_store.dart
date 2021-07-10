import 'package:mobx/mobx.dart';

part 'black_store.g.dart';

class BlackStore = _BlackStoreBase with _$BlackStore;
abstract class _BlackStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}