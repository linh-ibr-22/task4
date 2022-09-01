/*
create any enum you want with any value you want and 
let the user enter a string value of any value from your enum and 
convert that string into a enum type

using code like that may help you :
 Player.values 
 Player.values.byName
 
 */

import 'dart:io';

void main(List<String> args) {
  print(Input.values);
  print("whrite some thing:");
  final x = stdin.readLineSync()!;
  final inputOne = Input.a;

  print(Input.values.byName(x));
}

enum Input { a, b, c }
