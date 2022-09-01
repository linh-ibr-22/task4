// re solve task 3-3 but use a class to represent the person data
// also make each function in it is own file
/*
write a program to create a medical archive for covid to store the following data from the user
name ,phone , has covid before or not
it should support the following case
1- add new person
2- print all data
3- exit
 */
import 'dart:io';

class Person {
  String? name;
  String? phone;
  var hasCovid;

  addNewName() {
    final String name1 = stdin.readLineSync()!;

    this.name = name1;
    return name;
  }

  addPhoneNumber() {
    final String phone1 = stdin.readLineSync()!;
    this.phone = phone1;
    return phone1;
  }

  covidInfo() {
    final String input = stdin.readLineSync()!;

    if (input == "yas") {
      print(this.hasCovid = true);
    } else if (input == "no") {
      print(this.hasCovid = false);
    }
    return;
  }

  printAll() {
    print(
        "name is :${name} \n phone number is :${phone} \n has covid before :${hasCovid}");
  }
}

void main(List<String> args) {
  final x = Person();
  while (true) {
    print('''\n________________________
what you want to perform
1- add new person
2- print all data
3- exit''');

    final option = stdin.readLineSync()!;

    if (option == "3") {
      print("exit");
      break;
    } else if (option == "1") {
      print("enter name:");
      x.addNewName();
      print("enter phone number:");
      x.addPhoneNumber();
      print("is have covid (yes or no):");
      x.covidInfo();
      continue;
    } else if (option == "2") {
      x.printAll();
    } else {
      print("pleas choose one of these numbers");
    }
  }
}
