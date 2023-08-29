import 'package:flutter/material.dart';
import 'package:masterapp_/pages/homePages.dart';
// import 'package:masterapp_/person.dart';

class ContactInfo extends StatefulWidget {
  // Person person;
  late String nameInfo;
  late String lastnameInfo;
  late String numInfo;
  late String mailInfo;
  late String companyInfo;

  ContactInfo(
      {Key? key,
      required this.nameInfo,
      required this.lastnameInfo,
      required this.numInfo,
      required this.mailInfo,
      required this.companyInfo})
      : super(key: key);

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar Area
      appBar: AppBar(
        title: const Text("Contacts"),
        //Arrow_Back Icon Area
        leading: IconButton(
          iconSize: 18,
          color: Colors.blueGrey.shade800,
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            print("Back buton basıldı");
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
            );
          },
        ),
        //Delete Icon Area
        actions: [
          IconButton(
            iconSize: 18,
            onPressed: () {
              //SnacBar Widget Area - 1
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text(
                      "Are you sure you want the contact to be deleted? "),
                  action: SnackBarAction(
                    label: "Yes",
                    onPressed: () {
                      print("Delete tuluna basıldı");
                      //SnacBar Widget Area - 2
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Contact is deleted."),
                        ),
                      );
                    },
                  ),
                ),
              );
            },
            icon: const Icon(Icons.delete),
          ),
          //Edit Icon Area
          IconButton(
              iconSize: 18,
              onPressed: () {
                print("Edit buton basıldı");
                print(context);
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ContactUpdate(person: tfPerson,),),);
              },
              icon: const Icon(Icons.edit))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(1.0),
        // color: Colors.blueGrey,
        child: Column(
          children: [
            const Spacer(flex: 30),
            //Image Area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/img/1.jpg",
                )
              ],
            ),
            const Spacer(
              flex: 10,
            ),
            //Name Text Area
            Text(
              widget.nameInfo + " " + widget.lastnameInfo,
              style: const TextStyle(
                  fontSize: 20,
                  // fontFamily: "bold",
                  fontWeight: FontWeight.w600),
            ),
            const Spacer(
              flex: 20,
            ),
            //Number Area
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.numInfo,
                  // "+90 500 000 00 00",
                  style: const TextStyle(color: Colors.cyan, fontSize: 17),
                ),
              ],
            ),
            //Divider Line
            const DividerLine(),
            //Buttons Area
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //Call Button Area
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.green,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      print("Arama tuşuna basıldı.");
                    },
                    icon: const Icon(
                      Icons.call,
                      size: 25,
                    ),
                  ),
                ),
                //Message Button Area
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.yellow.shade700,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      print("Mesaj tuşuna basıldı.");
                    },
                    icon: const Icon(
                      Icons.message,
                      size: 25,
                    ),
                  ),
                ),
                //Mail Button Area
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.lightBlue,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      print("Mail tuşuna basıldı.");
                    },
                    icon: const Icon(
                      Icons.mail_outline,
                      size: 25,
                    ),
                  ),
                ),
                //Shared Button Area
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.shade700,
                  ),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      print("Arama tuşuna basıldı.");
                    },
                    icon: const Icon(
                      Icons.share_rounded,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            //Divider Line
            const DividerLine(),
            const Spacer(flex: 50)
          ],
        ),
      ),
    );
  }
}

class DividerLine extends StatelessWidget {
  const DividerLine({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      color: Colors.black,
      height: 50,
      thickness: 1,
    );
  }
}
