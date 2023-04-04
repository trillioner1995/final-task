import 'dart:io';

void main() {
  List<int> mass = [2, 3, 7, 65, 43, 12, 32, 54, 13, 77];
  List<int> mass1 = [];
  List<int> mass2 = [];
  for (int i in mass) {
    if (i.isEven) {
      mass1.add(i);
    }
    if (i.isOdd) {
      mass2.add(i);
    }
  }
  print(mass1);
  print(mass2);

  print('Напишите число:');
  dynamic chislo = int.parse(stdin.readLineSync()!);
  do {
    if (chislo > 0) {
      print('Больше нуля');
      chislo = int.parse(stdin.readLineSync()!);
    }
    if (chislo <= 0) {
      print('Меньше нуля');
      chislo = int.parse(stdin.readLineSync()!);
    }
  } while (chislo != 'stop');

  print('Введите год вашего рождения:');
  int GR = int.parse(stdin.readLineSync()!);
  print('Введите месяц вашего рождения:');
  int MR = int.parse(stdin.readLineSync()!);
  print('Введите день вашего рождения:');
  int DR = int.parse(stdin.readLineSync()!);
  DateTime today = DateTime.now();
  print(
      'Вам: ${today.year - GR} лет, ${today.month - MR} месяцев, ${today.day - DR} дней.');
}
