import 'dart:convert';
import 'dart:io';
import 'dart:math';
// import 'package:test/test.dart';
void main(){
  String number = "10a";
  print(int.tryParse(number) ?? "Error");

  var inputString = stdin.readLineSync(encoding: utf8);
  print(inputString);

  stdout.write("Write your name:");
  var inputName = stdin.readLineSync();
  stdout.write(inputName);

  // int num = Random().nextInt(60);

  // N1
  List<int> list1 = [1,1,2,3,5,8,13,21,34,55,89];
  List<int> list2 = [1,2,3,4,5,6,7,8,9,10,11,12,13];
  Set<int> set1 = Set.from(list1);
  Set<int> set2 = Set.from(list2);
  List<int> mergedLists = List.from(set1.intersection(set2));
  print(mergedLists);

  //N2
  List<int> a = [1,4,9,16,25,36,49,64,81,100];
  List<int> evenNumbers = [];
  for (var element in a) {
    if(element.isEven){
      evenNumbers.add(element);
    }
  }
  print(evenNumbers);

  //N3
  print("Enter letter: ");
  String inputLetter = stdin.readLineSync()!;
  print("Enter word: ");
  String inputWord = stdin.readLineSync()!;
  int counter = 0;
  for (int i = 0; i < inputWord.length; i++) {
    if(inputWord[i] == inputLetter){
      counter++;
    }
  }
  print("Letter '$inputLetter' in '$inputWord' -> $counter");

  //N1
  for(int i = 5; i > 0; i--){
    print(i);
  }

  //N2
  int multiple = 0;
  for(int i = 1; i <= 10; i++){
    multiple = 3 * i;
    print("3 * $i = $multiple");
  }

  //N3
  stdout.write("Введите число: ");
  int inputInt = int.tryParse(stdin.readLineSync()!) ?? 0;
  int result = 0;
  for(int i = 1; i <= inputInt; i++){
   result += i;
  }
  print(result);

  //N4
  for(int i = 10; i <= 20; i++){
   print(pow(i, 2).toInt());
  }

  //N5
  stdout.write("Введите n: ");
  int inputN = int.tryParse(stdin.readLineSync()!) ?? 0;
  int resultN = 0;
  for(int i = 0; i <= inputN; i++){
   resultN += i;
  }
  print(resultN);

  //N6
  stdout.write("Введите сумму вклада: ");
  int contribution = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("Введите на сколько лет: ");
  int year = int.tryParse(stdin.readLineSync()!) ?? 0;
  double total = contribution * pow((1 + 0.03), year).toDouble();
  print("Сумма вклада через $year лет = $total;");

  //N7
  for(int i = 20; i < 50; i++){
   if(i % 3 == 0 && i % 5 != 0){
     print(i);
   }
  }

  //8
  int numberSumm = 0;
  for(int i = 1; i < 50; i++){
   if(i % 5 == 0 || i % 7 ==0){
      numberSumm += i;
    }
  }
  print("Сумма чисел которые делятся на 5 или на 7: $numberSumm;");

  //9
  for(int i = 10; i < 100; i++){
    if(i % 4 == 0 && i % 6 != 0){
      print(i);
    }
  }

  //10
  int numberResult = 0;
  for(int i = 100; i < 200; i++){
    if(i % 17 == 0){
      numberResult += i;  
    }
  }
  print("Сумма чисел от 100 до 200, кратных 17: $numberResult;");

  //N11
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;
  int summ = 0;
  for(int i = 1; i <= n; i++){
    summ += pow(i, 2).toInt();
  }
  print("Сумма квадратов чисел от 1 до $n: $summ");

  Set<int> setOne = {1,2,3,4,5,6};
  Set<int> setTwo = {7,8,9};
  print(setOne.union(setTwo));
  print(setOne.skip(3));
  var numberLessSix = setOne.where((element) => element < 6);
  setOne.remove(numberLessSix);
  // print(setOne.remove(setOne.skip(3).take(2).toSet().last));
  print(setOne);
}