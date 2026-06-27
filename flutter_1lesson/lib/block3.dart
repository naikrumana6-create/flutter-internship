/*FutureBuilder, Loading & Error States, Pull-to-Refresh
   
What is FutureBuilder?
Until now you used a button to fetch data. But in real apps, data loads automatically when screen opens — 
no button needed.
FutureBuilder is a widget that:
Automatically calls your fetch function when screen opens
Shows a loading spinner while waiting
Shows data when it arrives
Shows error if something goes wrong

FutureBuilder(
  future: fetchPosts(),      // function to call
  builder: (context, snapshot) {
    // snapshot holds the current state

    if (snapshot.connectionState == ConnectionState.waiting) {
      return CircularProgressIndicator(); // loading spinner
    }

    if (snapshot.hasError) {
      return Text("Error: ${snapshot.error}"); // error state
    }

    // data is ready!
    var data = snapshot.data;
    return Text(data.toString());
  },
)


What is snapshot?
Snapshot is like a live update of what's happening with your Future:
snapshot state                  Meaning
ConnectionState.waiting         still loading
snapshot.hasError               something went wrong
snapshot.hasData                data is ready
snapshot.data                   the actual data

// State 1 - Loading
if (snapshot.connectionState == ConnectionState.waiting) {
  return CircularProgressIndicator(); // spinning circle
}

// State 2 - Error
if (snapshot.hasError) {
  return Text("Something went wrong!");
}

// State 3 - Data ready
return Text(snapshot.data.toString());



Pull to Refresh
Pull to refresh means pulling down on the list to reload data — like Gmail or Instagram.
In Flutter this is done with RefreshIndicator:
RefreshIndicator(
  onRefresh: () async {
    // reload your data here
    await fetchPosts();
  },
  child: ListView(...), // your list goes here
)
When user pulls down → onRefresh is called → data reloads!




*/