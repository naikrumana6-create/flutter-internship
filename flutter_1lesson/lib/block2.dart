/* Parse JSON into Dart Model Classes

 What is Parsing?
Parsing means converting JSON data into a Dart object that you can use easily in your app.
Right now you know how to get data like this:
data["title"]  // works but messy
data["userId"] // have to remember all key names

Instead we create a Dart class that holds the data properly
post.title  // clean!
post.userId // easy to use!

-------------------------------------------
What is a Model Class?
A model class is a Dart class that matches the JSON structure.
If JSON looks like this:
{
  "id": 1,
  "title": "Hello World",
  "body": "This is a post"
}
The model class looks like this:
class Post {
  int id;
  String title;
  String body;

  Post({required this.id, required this.title, required this.body});
}
Same fields, same names
----------------------------------------

What is fromJson?
fromJson is a method that converts a Map into a model object:
Step 1 — See the JSON
json{
  "id": 1,
  "title": "Hello",
  "body": "World"
}
JSON has 3 fields → id, title, body

Your Dart class must have the same 3 fields with same names!

Step 2 — Create matching Dart class
class Post {
  int id;        // matches "id" in JSON
  String title;  // matches "title" in JSON
  String body;   // matches "body" in JSON

  Post({required this.id, required this.title, required this.body});
}
This is just a normal class — just properties matching JSON fields.
required means → you must provide this value when creating a Post object, it can't be empty.

Step 3 — Add fromJson method
factory Post.fromJson(Map<String, dynamic> json) {
  return Post(
    id: json["id"],       // read "id" from Map → put in Post.id
    title: json["title"], // read "title" from Map → put in Post.title
    body: json["body"],   // read "body" from Map → put in Post.body
  );
}

factory → special constructor that converts something into an object
Map<String, dynamic> → the Map coming from jsonDecode. Keys are always String, values can be anything (int, String, bool)
This method reads each value from the Map and puts it into the Post object

Think of it like filling a form — JSON has the answers, fromJson fills them into the Post form!

Step 4 — Use it for single object
// API gives you a String like '{"id":1,"title":"Hello","body":"World"}'

var map = jsonDecode(response.body);  
// jsonDecode converts String → Map
// map = {"id": 1, "title": "Hello", "body": "World"}

Post post = Post.fromJson(map);       
// fromJson converts Map → Post object

print(post.title); // Hello ✅
print(post.id);    // 1 ✅
Without fromJson you'd have to write map["title"] everywhere — messy!

With fromJson you write post.title — clean!

Step 5 — Use it for a list
When API returns multiple items:
json[
  {"id": 1, "title": "Post 1", "body": "Body 1"},
  {"id": 2, "title": "Post 2", "body": "Body 2"},
  {"id": 3, "title": "Post 3", "body": "Body 3"}
]
var jsonList = jsonDecode(response.body);
// jsonList = [Map1, Map2, Map3] → List of Maps

List<Post> posts = jsonList.map((item) => Post.fromJson(item)).toList();
// .map() → goes through each Map one by one
// Post.fromJson(item) → converts each Map to Post object
// .toList() → collects all Posts into a final List
Result:
posts = [Post1, Post2, Post3] // List of Post objects!
posts[0].title // "Post 1"
posts[1].title // "Post 2"

Full Flow — Visual
API sends JSON String
        ↓
jsonDecode() 
        ↓
Single item → Map
List of items → List of Maps
        ↓
Post.fromJson() → converts Map to Post
.map().toList() → converts List of Maps to List of Posts
        ↓
Use post.title, post.id etc cleanly!

Key Terms
Term                      Meaning
Map<String, dynamic>      Map where keys are String, values are anything
factory                   special constructor that converts data into object
fromJson                  method that converts Map → Dart object
.map()                    goes through each item in a list one by one
.toList()                 collects results back into a List 
required                  this field cannot be empty when creating object





*/