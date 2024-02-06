import 'dart:io';
import 'dart:math';

void main(){
  // //if else operators
  //N1
  int hour = Random().nextInt(24);
  print("Время: $hour");
  if(hour >= 6 && hour <= 19){
    print("На улице светло");
  }else {
    print("На улице темно");
  }

  // //N2
  // int salary = Random().nextInt(490000) + 10000;
  // double tax = 0; 
  // print("Начальная сумма: $salary");

  // if(salary <= 100000){
  //   tax = 0.05;
  // }else if(salary > 100000 && salary <= 200000){
  //   tax = 0.07;
  // }else{
  //   tax = 0.1;
  // }
  // double totalTax = salary * tax;
  // print("Сумма после учета налогов: $totalTax, процент: ${tax * 100}%");

  // //N3
  // int number = Random().nextInt(11) + 1;
  // String seasons = "";
  // String month = "";
  // if(number < 3 || number == 12){
  //   seasons = "Winter";
  //   if(number == 12){
  //     month = "December";
  //   }else if(number == 1){
  //     month = "January";
  //   }else if(number == 2){
  //     month = "February";
  //   }
  //   print("Number $number: $month, $seasons");
  // }else if(number > 2 && number < 6){
  //   seasons = "Spring";
  //   if(number == 3){
  //     month = "March";
  //   }else if(number == 4){
  //     month = "April";
  //   }else if(number == 5){
  //     month = "May";
  //   }
  //   print("Number $number: $month, $seasons");
  // }else if(number > 5 && number < 9){
  //   seasons = "Summer";
  //   if(number == 6){
  //     month = "June";
  //   }else if(number == 7){
  //     month = "July";
  //   }else if(number == 8){
  //     month = "August";
  //   }
  //   print("Number $number: $month, $seasons");
  // }else{
  //   seasons = "Autumn";
  //   if(number == 9){
  //     month = "September";
  //   }else if(number == 10){
  //     month = "October";
  //   }else if(number == 11){
  //     month = "November";
  //   }
  //   print("Number $number: $month, $seasons");
  // }

  // //Practical work N1
  // //N1
  // print("Введите номер пальца: ");
  // // int fingerNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  // int fingerNumber = 2;
  // Map fingers = {
  //   1:"Большой палец!",
  //   2:"Указательный палец!",
  //   3:"Средний палец!",
  //   4:"Безымянный палец!",
  //   5:"Мизинец!"};
  // print("Finger $fingerNumber = ${fingers.entries.where((element) => element.key == fingerNumber).first.value}");

  // //N2
  // int min = Random().nextInt(60);
  // String quarter = " ";
  // if(min <= 15){
  //   quarter = "Первая";
  // }else if(min <= 30){
  //   quarter = "Вторая";
  // }else if(min <= 45){
  //   quarter = "Третья";
  // }else if(min <= 60){
  //   quarter = "Четвертая";
  // }
  // print("$min: $quarter четверть!");

  // //N3
  // print("Введите язык:");
  // // String lang = stdin.readLineSync()!;
  // String lang = "ru";
  // List<String> weekdays = [];
  // if(lang == "ru" || lang == "RU"){
  //   weekdays.addAll(["Понидельник","Вторник","Среда","Четверг","Пятница","Суббота","Воскресенье"]);
  // }else if(lang == "en" || lang == "EN"){
  //   weekdays.addAll(["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]);
  // }else{
  //   print("Error!");
  // }

  // //N4
  // String letters = "abcde";
  // if(letters[0] == "a"){
  //   print("Yes");
  // }else{
  //   print("No");
  // }

  //N5
  // print("Enter season number: ");
  // int seasonNumber = int.tryParse(stdin.readLineSync()!) ?? 0;
  // String season = "";
  // if(seasonNumber == 1){
  //   season = "Winter";
  // }else if(seasonNumber == 2){
  //   season = "Spring";
  // }else if(seasonNumber == 3){
  //   season = "Summer";
  // }else if(seasonNumber == 4){
  //   season = "Autumn";
  // }else{
  //   season = "You can only enter from 1 to 4!";
  // }
  // print("$seasonNumber: $season");

  // N6
  int a = -12;
  print(a < 0 ? "Верно" : "Неверно");



  //exercises
  // print("Введите ваш балл: ");
  // // int score = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // String score = stdin.readLineSync() ?? "0";
  // if((int.tryParse(score) ?? 0) > 76){
  //   print("Вы успешно прошли тест!");
  // }else{
  //   print("К сожелению, вы не прошли тест!");
  // }


  print("Введите уравнение: ");
  String function = stdin.readLineSync() ?? "0";
  function.trim();
  int number1 = 0;
  int number2 = 0;
  String container = "";
  String action = "";
  int result = 0;
  for(int i = 0; i < function.length; i++){
    if(function[i] != " " && function[i] != "+" && function[i] != "-" &&
    function[i] != "*" && function[i] != "/"){
      container += function[i];
    }else if(function[i] != " "){      
      action = function[i];
      number1 = int.tryParse(container) ?? 0;
      container = "";
      i++;
    }
  }
  number2 = int.tryParse(container) ?? 0;

  // print("Введите первое число: ");
  // int number1 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // print("Введите действие +, -, *, /, %: ");
  // String action = stdin.readLineSync() ?? "0";
  // print("Введите второе число: ");
  // int number2 = int.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  // int result = 0;

  if(action == '+'){
    result = number1 + number2;
  }else if(action == '-'){
    result = number1 - number2;
  }else if(action == '*'){
    result = number1 * number2;
  }else if(action == '/'){
    result = number1 ~/ number2;
  }else if(action == '%'){
    result = number1 % number2;
  }else{
    print("Ошибка!");
  }
  print("$number1 $action $number2 = $result");


}