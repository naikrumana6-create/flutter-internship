/* TextField + Controllers + Buttons

 What is TextField?
TextField is a widget that lets the user type something. Like an input box in a website form.

TextField(
  decoration: InputDecoration(
    hintText: "Enter your name", // placeholder text
    border: OutlineInputBorder(), // box border around it
    label: Text("Name"),         // label on top
  ),
)


What is a Controller?
When user types in a TextField, you need a way to read what they typed. That's what a TextEditingController does — it's connected to the TextField and holds whatever the user typed.
Think of it like this:
TextField = the input box
Controller = the variable that stores what's typed

How to use Controller — Step by Step
Step 1 — Create a controller
tTextEditingController myController = TextEditingController();

Step 2 — Connect it to TextField
TextField(
  controller: myController,
)

Step 3 — Read the value anywhere
String typed = myController.text; // gives you what user typed



ElevatedButton - It's just a clickable button:
ElevatedButton(
  onPressed: () {
    // do something when pressed
  },
  child: Text("Submit")


----------------------------
example
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Block 2',
      home: TextFieldPage(),
    );
  }
}

class TextFieldPage extends StatefulWidget {
  @override
  State<TextFieldPage> createState() => _TextFieldPageState();
}

class _TextFieldPageState extends State<TextFieldPage> {
  TextEditingController nameController = TextEditingController();
  String displayText = "Nothing typed yet";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextField Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                hintText: "Enter device name",
                border: OutlineInputBorder(),
                label: Text("Device Name"),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  displayText = nameController.text;
                });
              },
              child: Text("Show"),
            ),
            SizedBox(height: 20),
            Text(
              "You entered: $displayText",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}


*/