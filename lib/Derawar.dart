import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// void main() {
//   runApp(const derawar());
// }

class Derawar extends StatelessWidget {
  const Derawar({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("application mobile"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: "Setting Icon",
              onPressed: () {},
            ),
            IconButton(icon: Icon(Icons.comment), onPressed: () {}),
          ],
          backgroundColor: Colors.greenAccent[400],
          elevation: 30.0,
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
        body: const Center(
          child: Text(
            "Bonjour de flutter ",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              // background: Color
            ),
          ),
        ),
      ),
    );
  }
}
