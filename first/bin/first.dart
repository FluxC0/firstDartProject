import 'dart:io';

class Math {
  num value1 = 0;
  num value2 = 0;

  List<num> get getValues {

    List<num> valList= [value1,value2];
    return valList;
  } // Getter and Setter to set some values to hopefully make coding a bit easier.
  set setValues(List<num> valList) {
    value1 = valList[0];
    value2 = valList[1];
    print("Values set to $valList");
  }
  num addValues() {
    return value1 + value2;
  }
}
List<num> buildValueList() {
  print("Choose first value.");
  num v1 = num.parse(stdin.readLineSync()!);
  print("Choose last value.");
  num v2 = num.parse(stdin.readLineSync()!);
  List<num> builtList = [v1,v2];
  return builtList;
}


void main() {
  var math = Math();
  print(math.getValues);
  math.setValues = buildValueList();

  print(math.getValues);
  print(math.addValues());

}