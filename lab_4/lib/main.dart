import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lab_4/cardscreen.dart';

void main() { 

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Lab 4'),
            bottom: TabBar(
              tabs: [
                Tab(text: "ListView"),
                Tab(text: "GridView"),
              ],
            ),
          ),
          drawer: Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.blue),
        accountName: Text('Ayazhan'),
        accountEmail: Text('ayazhantashmurat97@gmail.com'),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
          child: Icon(Icons.person, size: 40, color: Colors.blue),
        ),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.person),
        title: Text('Profile'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {},
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('Logout'),
        onTap: () {},
      ),
      Builder(
  builder: (context) => ListTile(
    leading: Icon(Icons.card_membership),
    title: Text('Cards'),
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CardScreen()),
      );
    },
  ),
),
      ListTile(
        leading: Icon(Icons.notifications),
        title: Text('Show Toast'),
        onTap: () {
          Fluttertoast.showToast(
            msg: "Hello, Flutter!",
            gravity: ToastGravity.BOTTOM,
          );
        },
      ),
    ],
  ),
),

          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Item ${index + 1}'),
                    subtitle: Text('Subtitle ${index + 1}'),
                    leading: Icon(Icons.list),
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8),
                    color: Colors.primaries[index % Colors.primaries.length],
                    child: Center(
                      child: Text('${index + 1}', style: TextStyle(fontSize: 24, color: Colors.white)),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}



