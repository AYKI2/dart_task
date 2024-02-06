void main(){
  //List
  //N1
  List<int> array = [1, 7, 12, 3, 56, 2, 87, 34, 54];
  print('${array.first}, ${array[5]}, ${array.last}');

  //N2
  List<int> firstArray = [3, 12, 43, 1, 25, 6, 5, 7];
  List<int> secondArray = [55, 11, 23, 56, 78, 1, 9];
  firstArray.addAll(secondArray);
  print(firstArray);

  //N3
  List letters = ['a','d','F','l','u','t','t','e','R','y','3','b','h','j'];
  print(letters.getRange(2, 7).toList());
  // print(letters.skip(2).take(7).toList());

  //N4
  List<int> numberArray = [1, 2, 3, 4, 5, 6, 7];
  print("Массив содержит цифру 3?: ${numberArray.contains(3)}");
  print("Элементы массива: Первый[${numberArray.first}], Последний[${numberArray.last}]\nДлина массива: ${numberArray.length}");

  //N5
  List dynamicArray = [601123, 2, "dart", 45, 95, "dart24", 1];
  print("1 - ${dynamicArray.contains("dart")}");
  print("2 - ${dynamicArray.contains(951)}");

  //N6
  List lowerCaseList = ['post', 1, 0, 'flutter'];
  String myDart = "Flutter";
  print(lowerCaseList.contains(myDart.toLowerCase()));

  //N7
  List<String> joinWords = ["I", "Started", "Learn", "Flutter", "Since", "October"];
  String myFlutter = joinWords.join(" *");
  print(myFlutter);

  //N8
  List<int> integerArray = [1, 9, 3, 195, 202, 2, 5, 7, 9, 10, 3, 15, 0, 11];
  integerArray.sort();
  print(integerArray);
}