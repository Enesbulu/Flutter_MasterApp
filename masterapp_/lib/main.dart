import 'package:flutter/material.dart';
import 'package:masterapp_/pages/homePages.dart';
import 'package:masterapp_/person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.indigo),
      // theme: ThemeData(primaryColorDark: Color.fromARGB(161, 126, 47, 28)),
      home: Home(),
    );
  }
}

Future<List<Person>> viewAllContact() async {
  var personList = <Person>[];

  var k1 =
      Person(id: 0, name: "Mehmet", lastname: "Seyran", num: "+905000000000");
  var k2 =
      Person(id: 1, name: "Selim", lastname: "Ceylan", num: "+905001111111");
  var k3 = Person(id: 2, name: "Ayhan", lastname: "Boz", num: "+905002222222");
  var k4 = Person(id: 3, name: "Nuray", lastname: "Genç", num: "+905003333333");
  var k5 = Person(id: 4, name: "Nil", lastname: "Serin", num: "+905004444444");

  personList.add(k1);
  personList.add(k2);
  personList.add(k3);
  personList.add(k4);
  personList.add(k5);

  return personList;
}
