/*ListView, Card, ListTile, Images, Theme & Colors

1.ListView
ListView is used to show a scrollable list of widgets. When you have many items that don't fit on screen, 
ListView lets you scroll through them.
Two ways to use ListView:
Way 1 — ListView (small fixed list)
ListView(
  children: [
    Text("Item 1"),
    Text("Item 2"),
    Text("Item 3"),
  ],
)
Way 2 — ListView.builder (large dynamic list)
ListView.builder(
  itemCount: 5,        // how many items
  itemBuilder: (context, index) {
    return Text("Device $index");
  },
)

2. Card
Card is a box with shadow and rounded corners. Used to show information in a clean way.
Card(
  elevation: 4,        // shadow depth
  color: Colors.white,
  child: Text("Device 1"),
)

3.ListTile
ListTile is a ready made row for lists. It has slots for icon, title, subtitle and trailing icon —
 you don't have to build a Row manually.
 ListTile(
  leading: Icon(Icons.devices),    // left side icon
  title: Text("ESP32"),            // main text
  subtitle: Text("Connected"),     // smaller text below title
  trailing: Icon(Icons.arrow_forward), // right side icon
)


4.Basic Theme & Colors
You can set colors globally in MaterialApp so the whole app follows one color scheme:
MaterialApp(
  theme: ThemeData(
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.grey[100],
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    ),
  ),
  home: HomePage(),
)



example of all together :
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'practice',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: Block3Page(),
    );
  }
}

class Block3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IoT Devices"),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32 - Device 1"),
              subtitle: Text("Temperature: 27.5°C"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi_off, color: Colors.red),
              title: Text("ESP32 - Device 2"),
              subtitle: Text("Offline"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32 - Device 3"),
              subtitle: Text("Humidity: 65%"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}

*/