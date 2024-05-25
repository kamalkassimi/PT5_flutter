import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }
 class Spinner extends StatelessWidget {
  const Spinner({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterDemo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        // If you're using Material 3, you might need additional configurations
        // to fully adopt the Material 3 design language.
      ),
      home: SpinnerExample(),
    );
  }
}
class SpinnerExample extends StatefulWidget {
  @override
  _SpinnerExampleState createState() => _SpinnerExampleState();
}

class _SpinnerExampleState extends State<SpinnerExample> {
  String? selectedValue ;
  List<String> spinnerItems = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spinner Example'),
      ),
      body: Center(
        child: DropdownButton<String>(
          hint: Text('Select an item'),
          value: selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              selectedValue = newValue;
            });
          },
          items: spinnerItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
