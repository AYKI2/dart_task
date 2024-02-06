import 'dart:math';

void main(){
  // Представьте, что вы работник налоговой службы, и вы курируете одного предпринимателя. 
  //Создайте переменную, которая будет выдавать случайное число(от 10 тыс. до 500 тыс.). 
  //Это число будет месячным заработком предпринимателя. 
  //Он будет облагаться налогом в 5% если прибыть не превышает 100 тыс.,
  //налогом в 7% - более 100 и меньше 200 тыс.,10 % - более 200 тыс. 
  //Выведите на экран процент налога и сумму налога.  
  //(Подсказка: если 5%, то число нужно умножить на 0.05.)

  //N1
  int monthlySalary = Random().nextInt(490000) + 10000;
  double percent = 0;
  if(monthlySalary < 100000){
    percent = 0.05;
  }else if(monthlySalary > 100000 && monthlySalary < 200000){
    percent = 0.07;
  }else if(monthlySalary > 200000){
    percent = 0.1;
  }
  double total = monthlySalary * percent;
  print("Процент налога: ${(percent * 100).toStringAsFixed(1)}%\nСумма налога: ${total.toStringAsFixed(2)}");

  //Создайте переменную, которая создаёт случайное значение от 1 до 12. 
  //В зависимости от числа выведите на экран месяц и сезон года. 
  //Например: число 2 - январь, зима.

  //N2
  int number = Random().nextInt(11) + 1;
  Map months = {
    1 : "January",
    2 : "February",
    3 : "March",
    4 : "April",
    5 : "May",
    6 : "June",
    7 : "July",
    8 : "August",
    9 : "September",
    10 : "October",
    11 : "November",
    12 : "December"
  };
  String season = " ";
  if(number < 3 || number == 12){
    season = "Winter";
  }else if(number < 6){
    season = "Spring";
  }else if(number < 9){
    season = "Summer";
  }else{
    season = "Autumn";
  }
  print("Number $number - ${months[number]}, $season");

}