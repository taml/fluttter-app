import 'package:test/test.dart';
import 'package:fluttter_app/main.dart';

void main() {
  group('Test method related to visibility of icons', (){
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

  group('Test methods related to icon padding amount', (){

    double smallPaddingValue = 8.0;
    double largePaddingValue = 24.0;

    test('Check 8.0 is returned when value is true', (){
      bool testValue = true;
      double result = BodyContent().smallerPadding(testValue);
      expect(result, smallPaddingValue);
    });
    test('Check 24.0 is returned when value is false', (){
      bool testValue = false;
      double result = BodyContent().smallerPadding(testValue);
      expect(result, largePaddingValue);
    });
    test('Check 8.0 is returned when value passed to isNotEqualToZero method is 1', (){
      int testValue = 1;
      double result = BodyContent().smallerPadding(BodyContent().isNotEqualToZero(testValue));
      expect(result, smallPaddingValue);
    });
    test('Check 24.0 is returned when value passed to isNotEqualToZero method is 0', (){
      int testValue = 0;
      double result = BodyContent().smallerPadding(BodyContent().isNotEqualToZero(testValue));
      expect(result, largePaddingValue);
    });
  });
}