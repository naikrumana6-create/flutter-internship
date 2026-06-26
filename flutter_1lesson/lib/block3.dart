/*Navigation (Push/Pop between screens)
   
What is Navigation?
In real apps you have multiple screens. For example:
Screen 1 → Device List
Screen 2 → Device Detail
Navigation means moving from one screen to another.
In Flutter, screens are called Routes and navigation works like a stack of plates:
Push → add a new plate on top (go to new screen)
Pop → remove the top plate (go back)

Navigator.push   go to a new screen
Navigator.pop    go back to previous screen

Navigator.push — Go to new screen
Navigator.push(
context,
MaterialPageRoute(Builder:(context)=> SecondPage())
)

Navigator.pop — Go back
Navigator.pop(context);

Passing data to next screen
You can send data to the next screen through its constructor:
// sending data
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => SecondPage(deviceName: "ESP32-01"),
  ),
);

// receiving data in SecondPage
class SecondPage extends StatelessWidget {
  String deviceName; // receives the data

  SecondPage({required this.deviceName}); // constructor

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(deviceName), // use the data
    );
  }
}




-----------------
example
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation',
      home: FirstPage(),
    );
  }
}

// First Screen
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Device List"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SecondPage(deviceName: "ESP32-01"),
              ),
            );
          },
          child: Text("Go to Device Detail"),
        ),
      ),
    );
  }
}

// Second Screen
class SecondPage extends StatelessWidget {
  String deviceName;

  SecondPage({required this.deviceName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Device Detail"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.devices, size: 80, color: Colors.blue),
            SizedBox(height: 20),
            Text(
              deviceName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Status: Online", style: TextStyle(color: Colors.green)),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // go back
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}





*/