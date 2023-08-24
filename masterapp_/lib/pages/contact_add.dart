import 'package:flutter/material.dart';
import 'package:masterapp_/person.dart';

class ContactAdd extends StatefulWidget {
  const ContactAdd({Key? key}) : super(key: key);

  @override
  State<ContactAdd> createState() => _ContactAddState();
}

class _ContactAddState extends State<ContactAdd> {
  final personList = Person.personList();

  @override
  Widget build(BuildContext context) {
    EdgeInsets textFiledEdgeInsets = const EdgeInsets.only(
        left: 20,
        right: 20,
        bottom:
            20); //textField nesnelerinin paddin değerlerini standartlaştırmak için oluşturulmuş değişken.
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
        leading: IconButton(
          iconSize: 18,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            print("Geri tuşuna basıldı");
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 101, 172, 200),
              ),
              onPressed: () {
                print("save basıldı");
              },
              child: const Text(
                'SAVE',
                style: TextStyle(color: Color.fromARGB(232, 21, 68, 80)),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // const Spacer(
          //   flex: 50,
          // ),
          Padding(
            padding: textFiledEdgeInsets,
            child: const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Name",
                  hoverColor: Color.fromARGB(232, 17, 143, 202),
                ),
              ),
            ),
          ),
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Last Name",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Phone (+90 0500 000 00 00) ",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          Padding(
            padding: textFiledEdgeInsets,
            child: const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Company",
                  hoverColor: Color.fromARGB(232, 3, 63, 91),
                ),
              ),
            ),
          ),
          // Spacer(
          //   flex: 10,
          // )
        ],
      ),
    );
  }
}
