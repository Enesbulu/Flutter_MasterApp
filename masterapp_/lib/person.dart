import 'dart:math';

class Person {
  late int? id = defaultId;
  late String name;
  late String lastname;
  late String num;
  late String mail;
  late String company;

  // late String image;
  late int defaultId = (Random().nextInt(95) + 5);
  late bool isDelete;

  Person({
    this.id,
    required this.name,
    required this.lastname,
    this.isDelete = false,
    required this.num,
    this.mail = "",
    this.company = "",
  });
}
