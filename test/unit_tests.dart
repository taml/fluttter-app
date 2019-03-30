import 'package:test/test.dart';
import 'package:fluttter_app/main.dart';

void main() {
  group('Function related to visibility of icons', (){
    test('Check true is returned when value is not 0', () {
      int testValue = 1;
      bool result = BodyContent().isNotEqualToZero(testValue);
      expect(result, true);
    });
    test('Check false is returned when value is 0', () {
      int testValue = 0;
      bool result = BodyContent().isNotEqualToZero(testValue);
      expect(result, false);
    });
  });
}