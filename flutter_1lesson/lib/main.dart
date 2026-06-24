// block 4
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Dashboard',
      theme: ThemeData(
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.red[100],
      ),
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IoT Dashboard"),
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
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32 - Device 4"),
              subtitle: Text("Temperature: 31.2°C"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32 - Device 5"),
              subtitle: Text("Temperature: 76.4°C"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32 - Device 6"),
              subtitle: Text("Temperature: 20.45°C"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
          Card(
            elevation: 4,
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi_off, color: Colors.red),
              title: Text("ESP32 - Device 7"),
              subtitle: Text("Offline"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}