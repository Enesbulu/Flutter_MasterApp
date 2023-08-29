import 'package:flutter/material.dart';
import 'package:masterapp_/person.dart';

// ignore: must_be_immutable
class Home extends StatefulWidget {
  // Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final personList = Person.personList();
  bool isSearch = false;
  String searchQuery = "";
  late Person person_;

  Future<List<Person>> viewAllContact() async {
    var personList = <Person>[];

    var k1 =
        Person(id: 0, name: "Mehmet", lastname: "Seyran", num: "+905000000000");
    var k2 =
        Person(id: 1, name: "Selim", lastname: "Ceylan", num: "+905001111111");
    var k3 =
        Person(id: 2, name: "Ayhan", lastname: "Boz", num: "+905002222222");
    var k4 =
        Person(id: 3, name: "Nuray", lastname: "Genç", num: "+905003333333");
    var k5 =
        Person(id: 4, name: "Nil", lastname: "Serin", num: "+905004444444");
    var k6 =
        Person(id: 5, name: "Bengü", lastname: "Kolay", num: "+905005555555");

    personList.add(k1);
    personList.add(k2);
    personList.add(k3);
    personList.add(k4);
    personList.add(k5);
    personList.add(k6);

    return personList;
  }

  Future<void> deletePerson(int personId) async {
    print("$personId silindi");

    setState(
      () {
        // viewAllContact   //kişi silinince kişiler listesinden silinmesi gerekli. gerekli kod yazılacak!
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          tooltip: "Menu icon",
          icon: const Icon(Icons.dehaze),
          onPressed: () {
            print("Menuye basıldı");
          },
        ),
        title: isSearch
            ? TextField(
                decoration: const InputDecoration(
                  hintText: "Search",
                  labelStyle: TextStyle(color: Colors.black),
                ),
                onChanged: (searchResult) {
                  print("Arama sonucu : $searchResult");
                  searchQuery =
                      searchResult; //arama sonucunu aranan kelimeye aktardım.
                },
              )
            : const Text('Masters'),
        actions: [
          isSearch
              ? IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isSearch = false;
                        searchQuery = "";
                      },
                    );
                    print("Search close basıldı.");
                    // SearchPage();
                  },
                  // icon: SearchPage(),
                  icon: const Icon(Icons.close),
                )
              : IconButton(
                  onPressed: () {
                    setState(
                      () {
                        isSearch = true;
                      },
                    );
                    print("Search basıldı.");
                    // SearchPage();
                  },
                  // icon: SearchPage(),
                  icon: const Icon(Icons.search),
                ),
          IconButton(
              iconSize: 22,
              onPressed: () {
                print("more_vert_rounded basıldı.");
              },
              icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      body: FutureBuilder<List<Person>>(
        future: viewAllContact(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var personList = snapshot.data;
            return ListView.builder(
              itemCount: personList!.length,
              itemBuilder: (context, index) {
                var person = personList[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 40, left: 40, top: 5),
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(context,MaterialPageRoute(builder: (context) => ContactInfo(person: person),),);
                    },
                    child: Card(
                      child: SizedBox(
                        height: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      person.name,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const Padding(padding: EdgeInsets.all(15)),
                                    Text(
                                      person.lastname,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      person.num,
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                )
                              ],
                            ),
                            IconButton(
                              onPressed: () {
                                deletePerson(person.id);
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Add buton basıldı");
          // Navigator.push(context,MaterialPageRoute(builder: (context) => ContactAdd()),
          // );
        },
        tooltip: "Add Contact",
        child: const Icon(Icons.add),
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The search area here
        title: const Text("Search Of AppBar"),
        actions: [
          IconButton(
            onPressed: () {
              print("Search basıldı.");
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }
}
