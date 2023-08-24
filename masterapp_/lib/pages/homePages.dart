import 'package:flutter/material.dart';
import 'package:masterapp_/person.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final personList = Person.personList();
  
  get 
   => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Masters'),
        leading: IconButton(
          tooltip: "Menu icon",
          icon: const Icon(Icons.dehaze),
          onPressed: () {
            print("Menuye basıldı");
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("Search basıldı.");
              SearchPage();
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
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Kişi ekle basıldı.");
        },
        child:  Icon(Icons.add),
      ),
            ],
          ),
        ),
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
              icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}


/*
  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue.shade200,
      elevation: 10,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: Colors.blueGrey,
            size: 25,
          ),
          Container(
            height: 25,
            width: 30,
            child: Column(children: []),
          ),
        ],
      ),
    );
  }
*/
