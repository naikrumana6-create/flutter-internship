/*layout widgets are used to arrange other widgets on screen
1.Container
Think of it like a box. You can give it size, color, padding, margin, border etc.
Container(
  width: 200,
  height: 100,
  color: Colors.blue,
  child: Text("Hello"),
)
margin- space outside the box
padding- space inside the box
alignment- where child sits inside box

2.Row
Arranges widgets horizontally (left to right)
Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.wifi),
    Text("Connected"),
    Icon(Icons.battery_full),
  ],
)
center- all widgets in center
start- all widgets on left
end- all widgets on right
spaceBetween- equal space between widgets
spaceAround- equal space around widgets

3.Column
Arranges widgets vertically (top to bottom) 
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text("Device 1"),
    Text("Device 2"),
    Text("Device 3"),
  ],
)
4.Padding
Adds space inside around a widget
Padding(
  padding: EdgeInsets.all(16),   // 16px space on all sides
  child: Text("Hello"),
)
EdgeInsets options:
EdgeInsets.all(16)                          // all 4 sides = 16
EdgeInsets.only(left: 10, top: 20)         // specific sides
EdgeInsets.symmetric(horizontal: 16, vertical: 8) // horizontal & vertical

5.Expanded
Makes a widget fill all remaining space inside a Row or Column
Row(
  children: [
    Text("Name"),
    Expanded(
      child: Text("This takes all remaining space"),
    ),
    Text("Age"),
  ],
)
Without Expanded → widgets only take as much space as they need
With Expanded → widget stretches to fill all leftover space

6.SizedBox
Adds empty space between widgets — like a spacer
Column(
  children: [
    Text("Hello"),
    SizedBox(height: 20),  // 20px gap
    Text("World"),
  ],
)
*/

/* example of layout widgets
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layouts',
      home: LayoutPage(),
    );
  }
}

class LayoutPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(appBar: AppBar(title:Text("Layout practice")),
    body : Padding(padding:EdgeInsets.all(16),
    child:Column
    (mainAxisAlignment:MainAxisAlignment.center,
    children :[Container(width:200,height:100,color:Colors.blue,child:Text("hello")
    ),
    Row(mainAxisAlignment: MainAxisAlignment.start,
    children:[Icon(Icons.power),Text("Power"),
    Icon(Icons.wifi),Text("Connected")
    ]
    ),
  ]
  
  )
  )
  );

  }
}*/