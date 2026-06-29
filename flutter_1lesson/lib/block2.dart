/* Show the latest reading on screen

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List readings = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchReadings();
  }

  Future<void> fetchReadings() async {
    var response = await http.get(
      Uri.parse("http://127.0.0.1:8000/readings"),
    );
    setState(() {
      readings = jsonDecode(response.body);
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IoT Dashboard"),
        backgroundColor: Colors.blue,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Column(
              children: [

                // Latest reading box
                Container(
                  width: double.infinity,
                  color: Colors.blue[100],
                  padding: EdgeInsets.all(16),
                  child: Text(
                    "Latest → Temp: ${readings.last["temperature"]}°C  |  Humidity: ${readings.last["humidity"]}%",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),

                // All readings list
                Expanded(
                  child: ListView.builder(
                    itemCount: readings.length,
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.all(8),
                        child: ListTile(
                          leading: Icon(Icons.devices, color: Colors.blue),
                          title: Text("${readings[index]["device_id"]}"),
                          subtitle: Text(
                            "Temp: ${readings[index]["temperature"]}°C  |  Humidity: ${readings[index]["humidity"]}%",
                          ),
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




*/