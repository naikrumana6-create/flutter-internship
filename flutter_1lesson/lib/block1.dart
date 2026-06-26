 /*setState and How Rebuilds Work

setState is a method in Flutter's StatefulWidget that tells Flutter to rebuild the UI when data changes.
When you call setState(), Flutter:
Updates the variable inside it
Calls build() again
Redraws the screen with the new value

ElevatedButton(
  onPressed: () {
    setState(() {
      count++; // ✅ count changes AND screen redraws!
    });
  },
  child: Text("Add"),
)

How rebuilds work — Step by Step
User presses button
      ↓
setState() is called
      ↓
Flutter marks this widget as "dirty" (needs redraw)
      ↓
Flutter calls build() again
      ↓
build() runs with new value of count
      ↓
Screen shows updated value!



Lifting State Up
This is a very important concept. Let me explain simply.
Imagine you have two widgets — a TextField and a Text. TextField is where user types, Text shows what they typed.
Problem: if they are separate widgets, how does Text know what was typed in TextField?
Answer: you lift the state up to their parent, and both widgets share it!

class ParentPage extends StatefulWidget {
  @override
  State<ParentPage> createState() => _ParentPageState();
}

class _ParentPageState extends State<ParentPage> {
  String typed = ""; // state lives in PARENT

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Child 1 - updates the shared state
            TextField(
              onChanged: (value) {
                setState(() {
                  typed = value; // updates parent's state
                });
              },
            ),
            SizedBox(height: 20),
            // Child 2 - reads the shared state
            Text(
              "You typed: $typed",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
Both TextField and Text are children of ParentPage. The state typed lives in the parent — so both can access it!


 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Block 1',
      home: ParentPage(),
    );
  }
}

class ParentPage extends StatefulWidget {
  @override
  State<ParentPage> createState() => _ParentPageState();
}

class _ParentPageState extends State<ParentPage> {
  int count = 0;
  String status = "Offline";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setState Practice"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Count: $count",
              style: TextStyle(fontSize: 30),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              child: Text("Add"),
            ),
            SizedBox(height: 40),
            Text(
              "Device is: $status",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  status = status == "Offline" ? "Online" : "Offline";   //Is status equal to Offline? If YES → set it to Online. If NO → set it to Offline."
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


 

*/