//block 4
import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IoT Dashboard',
      home: DashboardPage(),
    );
  }
}
// First Screen
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
            margin: EdgeInsets.all(8),
            child: ListTile(
              leading: Icon(Icons.wifi, color: Colors.green),
              title: Text("ESP32-01"),
              subtitle: Text("Temperature: 27.5°C"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
// Second Screen
class DetailPage extends StatefulWidget {
  @override
  State<DetailPage> createState() => _DetailPageState();
}
class _DetailPageState extends State<DetailPage> {
  String status = "Online";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ESP32-01"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Temperature: 27.5°C", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text(
              status,
              style: TextStyle(
                fontSize: 22,
                color: status == "Online" ? Colors.green : Colors.red,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  status = status == "Online" ? "Offline" : "Online";
                });
              },
              child: Text("Toggle Status"),
            ),
          ],
        ),
      ),
    );
  }
}