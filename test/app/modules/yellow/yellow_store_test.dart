import 'package:flutter_test/flutter_test.dart';
import 'package:modularapp/app/modules/yellow/yellow_store.dart';
 
void main() {
  late YellowStore store;

  setUpAll(() {
    store = YellowStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}