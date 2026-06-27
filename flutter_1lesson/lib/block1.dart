 /* REST, JSON, HTTP Package, Async Calls

1. What is REST?
REST is a way for apps to talk to a server over the internet.
REpresentational State Transfer
It's just a set of rules for how apps communicate with servers over the internet.

Think of it like a waiter in a restaurant:

You (Flutter app) = customer
Waiter = HTTP request
Kitchen = server/API
Food = data (JSON)
You place an order (request), waiter goes to kitchen, brings back food (data). That's REST!
GET     fetch/read data  
POST    send/create data
PUT     update data
DELETE  delete data

---------------------------
2.JSON
JavaScript Object Notation
It's just a format/structure for writing and sending data. 
Despite having JavaScript in the name, it works with every programming language including Dart!

A list of devices in JSON looks like:
[
  {"id": 1, "name": "ESP32-01", "status": "Online"},
  {"id": 2, "name": "ESP32-02", "status": "Offline"}
]

{} = one object
[] = list of objects
"key": "value" = data

------------------------------
 
3.What is HTTP?
HTTP stands for HyperText Transfer Protocol.
It's the language of the internet — when your app wants to talk to a server, it uses HTTP. 
Like how humans use English to talk to each other, apps use HTTP to talk to servers.

Why do we use it?
In Flutter, when you want to:
Fetch data from an API
Send data to a server
Connect to a backend (like your FastAPI)
You need HTTP to make that connection. Without it, your app is offline only — it can't talk to any server.

Why doesn't Flutter have it built in?
Flutter is a UI framework — its job is to build screens and widgets. Networking is a separate concern. 
So instead of making Flutter heavy by including everything, they kept it lightweight and let you add only 
what you need via packages.
It's like a basic phone — calls and texts are built in, but you install WhatsApp separately when you need it.

What is the http Package?
It's a package made by the Dart team that gives you simple functions to make HTTP requests:
Function        What it does
http.get()      fetch data from server
http.post()     send data to server
http.put()      update data on server
http.delete()   delete data on server

Alternatives to http package
Package      About
http         simple, official, good for beginners ✅
dio          more powerful, supports file upload, interceptors
chopper      best for large apps, auto generates code


How to add it in Flutter
Step 1 — Open pubspec.yaml
Step 2 — Add under dependencies
dependencies:
  flutter:
    sdk: flutter
  http: ^1.2.0
Step 3 — Save file or run:
Step 4 — Import it in your dart file:
import 'package:http/http.dart' as http;

Can we work without http package?
Technically yes — Dart has a built in library called dart:io that can make HTTP requests:
But it's very complicated and low level — you have to write a lot of code for simple things. 
The http package makes it much simpler.

-----------------------------------

4.  Making an Async API Call

2 imports always needed
import 'package:http/http.dart' as http; // to make internet requests
import 'dart:convert';                    // to convert JSON string to Dart Map


Basic Structure — always same
Future<void> fetchData() async {
  var response = await http.get(Uri.parse("URL here"));

  if (response.statusCode == 200) {
    var data = jsonDecode(response.body);
    print(data["key"]);
  } else {
    print("Error!");
  }
}

Keyword             Purpose
Future<void>        function takes time, returns nothing
async               this function has slow tasks
await               wait here until done
jsonDecode          converts String → Dart Map
statusCode          200= success, anything else = error



import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> fetchData() async {
  // Step 1 - make the request
  var response = await http.get(
    Uri.parse("https://jsonplaceholder.typicode.com/posts/1")
  );

  // Step 2 - check if successful
  if (response.statusCode == 200) {
    // Step 3 - convert JSON string to Dart Map
    var data = jsonDecode(response.body);
    print(data["title"]); // print the title
  } else {
    print("Error: ${response.statusCode}");
  }
}








*/