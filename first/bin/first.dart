import 'dart:io';
import 'dart:async';
class Math {
  num value1 = 0;
  num value2 = 0;
  final fakeLoadingTime = Duration(seconds: 5);
  List<num> get getValues {
    List<num> valList = [value1, value2];
    return valList;
  } // Getter and Setter to set some values to hopefully make coding a bit easier.

  set setValues(List<num> valList) {
    value1 = valList[0];
    value2 = valList[1];
    sleep(fakeLoadingTime);
    print("Values set to $valList");
  }

  Future<num> addValues() async {
  // Simulate a potential delay
  await Future.delayed(Duration(seconds: 1));

  return value1 + value2;
}


  Future<num> subtractValues() async
  {
    await Future.delayed((Duration(seconds: 1)));

    return value1 - value2;
  }
  Future<num> addThenSubtract() async {
    await Future.delayed(Duration(seconds: 2));
    var newDiff = await subtractValues();
    return newDiff;

  }
}

List<num> buildValueList() {
  print("Choose first value.");
  num v1 = num.parse(stdin.readLineSync()!);
  print("Choose last value.");
  num v2 = num.parse(stdin.readLineSync()!);
  List<num> builtList = [v1, v2];
  return builtList;
}

void main() {
  var math = Math();
  print(math.getValues);
  math.setValues = buildValueList();

  print(math.getValues);
  print(math.addValues().then((data){ //resolve the future and then print data
  print(data);
}));
  print(math.addThenSubtract().then((data){ //resolve the future and then print data
  print(data);
}));
}
