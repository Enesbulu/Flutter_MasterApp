import 'package:flutter/material.dart';
import 'package:masterapp_/pages/contact_info.dart';

import 'package:masterapp_/pages/homePages.dart';

class ContactAdd extends StatefulWidget {
  ContactAdd({Key? key}) : super(key: key);
  late String name;
  @override
  State<ContactAdd> createState() => _ContactAddState();
}

class _ContactAddState extends State<ContactAdd> {
  var tfContactName = TextEditingController();
  // var tfContactLastname = TextEditingController();
  // var tfContactNum = TextEditingController();
  // var tfContactMail = TextEditingController();
  // var tfContactCompany = TextEditingController();

  Future<void> Save(String name_) async {
    print("$name_  eklendi");
    Navigator.push(
      context as BuildContext,
      MaterialPageRoute(
        builder: (context) => ContactInfo(name: name_),
      ),
    ); // Navigate edilen class ın parametresi hazır olduğunda aktif edilebilecek bir kod
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //textField nesnelerinin paddin değerlerini standartlaştırmak için oluşturulmuş değişken.
    EdgeInsets textFiledEdgeInsets =
        const EdgeInsets.only(left: 20, right: 20, bottom: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Contact"),
        leading: IconButton(
          iconSize: 18,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            print("Back buton basıldı");
            print(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
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
                Save(tfContactName.text);
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
          //Name TextField
          Padding(
            padding: textFiledEdgeInsets,
            child: Expanded(
              child: TextField(
                controller: tfContactName,
                decoration: const InputDecoration(
                  hintText: "Name",
                  hoverColor: Color.fromARGB(232, 17, 143, 202),
                ),
              ),
            ),
          ),
          //LastName TextField
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Last Name",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          //Phone TextField
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Phone (+90 0500 000 00 00) ",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          //Email TextField
          Padding(
            padding: textFiledEdgeInsets,
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Email",
                hoverColor: Color.fromARGB(232, 3, 63, 91),
              ),
            ),
          ),
          //Company TextField
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
        ],
      ),
    );
  }
}
