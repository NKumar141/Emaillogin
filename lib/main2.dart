import 'package:flutter/material.dart';
import '../src/Screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../src/Screens/home.dart';

class app2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'login app',
      theme: ThemeData(
        accentColor: Colors.orange,
        primarySwatch: Colors.blue,
      ),
      home: Lang(),
    );
  }
}

class Lang extends StatefulWidget {
  _LangState createState() => _LangState();
}

//Center(
//        child: FlatButton(
//          child: Text('LogOut'),
//        onPressed: () {
//        auth.signOut();
//      Navigator.of(context).pushReplacement(
//        MaterialPageRoute(builder: (context) => Loginscreen()));
//}))
//
//

class _LangState extends State<Lang> {
  String _email = '', _password = '';
  final auth = FirebaseAuth.instance;
  String dropdownvalue = 'Item 1';
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset('assets/images/image.png'),
          Container(
            child: Text("Please select your Language"),
          ),
          Container(
            child: Text("You can change the language at any time."),
          ),
          DropdownButton(
            // Initial Value
            value: dropdownvalue,

            // Down Arrow Icon
            icon: const Icon(Icons.keyboard_arrow_down),

            // Array list of items
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? newValue) {
              setState(() {
                dropdownvalue = newValue!;
              });
            },
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
