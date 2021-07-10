import 'package:flutter_test/flutter_test.dart';
import 'package:modularapp/app/modules/black/black_store.dart';
 
void main() {
  late BlackStore store;

  setUpAll(() {
    store = BlackStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}