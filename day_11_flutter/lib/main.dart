import 'package:flutter/material.dart';

void main() {
  print("flutter day 11");
  final Text myText = Text(
    "Hello Tornado",
    style: TextStyle(fontSize: 24, color: Color(0xFFB00B69)),
  );
  final Center myCenteredText = Center(
    child: myText,
  );
  final Scaffold myNiceDesign = Scaffold(
    body: myCenteredText,
  );

  final MaterialApp myApp = MaterialApp(
    home: myNiceDesign,
  );
  final MySuperApp mySuperApplication = MySuperApp();
  runApp(mySuperApplication);
}

class MySuperApp extends StatelessWidget {
  const MySuperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My Super Dee Duper Saiyan'),
      ),
      body: Container(
        child: Center(
          child: Text(
            'Ayo was good my man',
            style: TextStyle(fontSize: 32, color: Color(0xFFB00B69), fontFamily: 'Ribeye'),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image.asset('assets/profile.png'),
      ),
    ));
  }
}
