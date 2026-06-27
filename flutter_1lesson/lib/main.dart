//block 4
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
      title: 'IoT Dashboard',
      home: HomePage(),
    );
  }
}

class Post {
  int id;
  String title;

  Post({required this.id, required this.title});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json["id"],
      title: json["title"],
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Post>> futurePosts;

  @override
  void initState() {
    super.initState();
    futurePosts = fetchPosts(); 
  }

  Future<List<Post>> fetchPosts() async {
    var response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/posts"),
    );
    var jsonList = jsonDecode(response.body);
    return jsonList.map<Post>((item) => Post.fromJson(item)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<List<Post>>(
        future: futurePosts,
        builder: (context, snapshot) {

          
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          // Error
          if (snapshot.hasError) {
            return Center(child: Text("Error!"));
          }
          List<Post> posts = snapshot.data!;
          return RefreshIndicator(
            onRefresh: () async {
              setState(() {
                futurePosts = fetchPosts();
              });
            },
            child: ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Text("${posts[index].id}"),
                    title: Text(posts[index].title),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}