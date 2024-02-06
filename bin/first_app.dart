void main(){
  //Variables
  //Task N1
  String text = "Hello, Dart!";
  print(text.runtimeType);

  String progLanguage = "Dart programming language";
  print(progLanguage.contains("dart"));

  String lowerCase = "dart is fun";
  print(lowerCase.toUpperCase());

  String upperCase = "DART IS COOL";
  print(upperCase.toLowerCase());

  String hello = "Hello";
  String dart = "Dart";
  print('$hello $dart');
  print(hello+dart);

  String space = "   ";
  print(space.isEmpty);

  String dartLength = "Dart Programming";
  print(dartLength.length);

  String trimText = " Trim me! ";
  print(trimText.trim());

  String replaceSpace = "Replace spaces with underscores";
  print(replaceSpace.replaceAll(" ", "_"));

  String containsSpace = " ";
  print(containsSpace.trim().isEmpty);
}