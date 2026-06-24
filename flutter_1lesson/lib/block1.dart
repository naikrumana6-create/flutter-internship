 /*Widget Tree, Stateless vs Stateful, Scaffold, AppBar, Text, Icon


 1. widget tree - everything is a widget. A button is a widget. Text is a widget. Even the whole screen is a widget.
 And these widgets sit inside each other like a family tree — that's called the widget tree.*/


 //2. Stateless 
 /*A widget that never changes after it's built. Like a printed photo — once printed, it stays the same forever.
Use it when: the screen has no buttons, no input, nothing that changes.*/

/*class MyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("I am Zuzu"); // this never changes
  }
}

/* 3.Stateful
A widget that can change based on user actions. Like a live camera — it keeps updating.
Use it when: something on screen changes — button press, typing, loading data.*/
class MyCounter extends StatefulWidget {
  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  int count = 0; // this will change!

  @override
  Widget build(BuildContext context) {
    return Text("Count: $count");
  }
}



4. Scaffold - Scaffold is the basic structure of every screen. Think of it like the skeleton of a human body — it 
holds everything in place.
It gives you:
Top bar (AppBar)
Main content area (body)
Bottom bar
Floating button

Scaffold(
  appBar: AppBar(
    title: Text("My App"),
  ),
  body: Center(
    child: Text("Hello!"),
  ),
  floatingActionButton: FloatingActionButton(
    onPressed: () {},
    child: Icon(Icons.add),
  ),
)



5. AppBar -AppBar is the top bar of your screen. It shows the title, back button, and action icons.

AppBar(
  title: Text("Device Dashboard"),
  backgroundColor: Colors.blue,
  centerTitle: true,
  leading: Icon(Icons.menu),       // left side icon
  actions: [
    Icon(Icons.search),            // right side icons
    Icon(Icons.notifications),
  ],
)

CORRECT way for multiple widgets in title
AppBar(
  title: Row(
    children: [Text("Hello"), Text("World")]
  )
)

6.Text - Text widget shows words on screen. Very simple but has many styling options.
  Text(
  "Hello Zuzu!",
  style: TextStyle(
    fontSize: 24,
    color: Colors.blue,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  ),
  textAlign: TextAlign.center,
  maxLines: 2, //how many lines allowed
  overflow: TextOverflow.ellipsis, // shows ... if text is too long
)


icon - Icon shows a small image/symbol from Flutter's built-in icon library.
Icon(
  Icons.home,           // which icon
  color: Colors.red,    // icon color
  size: 40,             // icon size
)
Commonly used Icons:
Icons.home          // house
Icons.person        // person/user
Icons.settings      // gear/settings
Icons.search        // magnifying glass
Icons.add           // plus sign
Icons.delete        // trash bin
Icons.edit          // pencil
Icons.wifi          // wifi symbol
Icons.power         // power button
Icons.notifications // bell

*/



/* example of all putting it together in a simple app
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT decive',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext contex)
  {
    return Scaffold
    (appBar : AppBar(title : Text("Iot decive"),backgroundColor: Colors.blueAccent),
    body: Center( child :Column( mainAxisAlignment: MainAxisAlignment.center,
    children:[Icon(Icons.wifi,size:100),Text("Connected")])),
     floatingActionButton: FloatingActionButton(onPressed:(){
      print("Button pressed");
     },
     child :Icon(Icons.refresh),
     )
    
    );
  }
}*/