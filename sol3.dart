/*
create a AirPlan class with the following attribute
1- model
2- yearOfMade
4- number of set
5- number of current passenger
5- number of engine
6- gas level (from 0 to 100)

and the follwing method
1- fly //(just print flying)
2- land //(just print landing and remove all Passenger)
3- fullGas(int level) // add the current gas level
4- addPassenger
5- removePassenger
6- isFullGas
7- isFullPassenger
we must also validate if there are empty set before adding a new passenger 
and validate that the gas level is full before flying 

after that write a main dart program to use this object


 */

class Airplane {
  String? fly;
  String? land;
  String? model;
  String? yearOfMade;
  String? numberOfSet;
  String? numberOfCurrentPassenger;
  String? numberOfEngine;
  String? gasLevel;

  Airplane() {
    numberOfCurrentPassenger = "100";
    numberOfEngine = "6";
    gasLevel = "0 - 100";
    fly = "flying";
    land = "landing";
    numberOfSet = "100";
    model = "A1234";
    yearOfMade = "2000";
  }

  isEmpty1() {
    print(numberOfCurrentPassenger!.isEmpty);
  }

  isEmpty2() {
    print(gasLevel!.isEmpty);
  }
}

void main() {
  final x = Airplane();

  print(x.fly);

  print(x.land);
  x.isEmpty1();
  x.isEmpty2();
  final a = x.numberOfCurrentPassenger;
  final b = x.numberOfSet;
  if (a != b) {
    print("add or remove passenger");
  }

  print("chick the gas level befor ${x.fly}");
}
