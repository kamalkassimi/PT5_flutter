import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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
  List<String> etat = ["Monsieur", "Madame", "Mademoiselle"];
  String valeur = "Monsieur";
  var lgcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        
        // icon: Icon(Icons.abc),
      ),
      
      body: Center(
        
        child: Column(
          children: <Widget>[
            const Text(
              "Authentification",
              style: TextStyle(fontSize: 40),
            ),
            Container (
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.message_sharp),
                  labelText: "saisir vote logion ",
                  hintText: "message ",
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person_2_outlined),
                  labelText: "Saisir votre email",
                  hintText: "kamal@gamil.com",
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.password),
                  labelText: "Saisirvotremotdepasse",
                  labelStyle: TextStyle(fontSize: 15),
                ),
                keyboardType: TextInputType.visiblePassword,
              ),
              
            ),
            SizedBox(
              height: 6,
            ),
            Row(
              
              children: [
                  SizedBox(width: 20,),
                Text("Madame"),
                Radio(
                    value: etat[0],
                    groupValue: valeur,
                    onChanged: (Object? value) {
                      setState(() {
                        valeur = etat[0];
                      });
                    }),
                  SizedBox(width: 20,),
                Text("Mademoselle"),
                Radio(
                    value: etat[1],
                    groupValue: valeur,
                    onChanged: (Object? value) {
                      setState(() {
                        valeur = etat[1];
                      });
                    }),
                      SizedBox(width: 20,),
                Text("Monsieur"),
                Radio(
                    value: etat[2],
                    groupValue: valeur,
                    onChanged: (Object? value) {
                      setState(() {
                        valeur = etat[2];
                      });
                    }),
              ],
            ),
            ElevatedButton(child: Text("OK"), onPressed: () => {}),
            
          ],
          
        ),
      ),
      
    );
  }
}
