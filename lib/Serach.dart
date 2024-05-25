import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

class Serach extends StatelessWidget {
  const Serach({super.key});
  //Thiswidgetistherootofyourapplication.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      home: MyHomePage(title: 'M208_TP5'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> suggestions = [
    "Apple",
    "Banana",
    "Cherry",
    "Date",
    "Elderberry",
    "Fig",
    "Grape",
    "Honeydew",
  ];
  String _searchText = "";
  List<String> etat = ["Monsieur", "Madame", "Mademoiselle"];
  String valeur = "Monsieur";
  var lgcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EasySearchBar(
        title: const Text('Search Bar Example'),
        onSearch: (value) {
          setState(() {
          _searchText = value;
          });
        },
      ),
      drawer: Drawer(
          child: ListView(
            padding: const EdgeInsets.all(0),
            children: const [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 76, 175, 92),
                ),
                child: UserAccountsDrawerHeader(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 76, 175, 79)),
                  accountName: Text(
                    "kamal kassimi",
                    style: TextStyle(fontSize: 18),
                  ),
                  accountEmail: Text("kamalkassimi@gmail.com"),
                  currentAccountPictureSize: Size.square(50),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Color.fromARGB(197, 137, 249, 255),
                    child: Text(
                      "k",
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Color.fromARGB(255, 175, 101, 76)),
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text("my course"),
              ),
              ListTile(
                leading: Icon(Icons.workspace_premium),
                title: Text("Go Premium"),
              ),
              ListTile(
                leading: Icon(Icons.video_label),
                title: Text("save videoas"),
              ),
              ListTile(
                leading: Icon(Icons.edit),
                title: Text("Edit Profile"),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text("logout"),
              )
            ],
          ),
        ),
      body:ListView(
        children: suggestions
            .where((element) => element.toLowerCase().contains(_searchText.toLowerCase()))
            .map((element) => ListTile(
                  title: Text(element),
                  onTap: () {
                    // Handle item tap
                  },
                ))
            .toList(),
      ),
    );
  }
}
