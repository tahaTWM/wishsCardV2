import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget fun(String title) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.cyan),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: ListTile(
                tileColor: Colors.cyan,
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 30,
                  backgroundImage: AssetImage('assets/logo.jpg'),
                ),
                title: Text(title),
                subtitle: Text('Nov - 20 - 2020'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 30),
              child: Text("What is Yout wish in 2021!!??"),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: SizedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                          child: Row(children: [
                        Icon(Icons.undo),
                        Text("Unpublished")
                      ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: SizedBox(
                          child: Row(children: [
                        Icon(Icons.star_border),
                        Text("Favorite")
                      ])),
                    ),
                    SizedBox(
                        child: Row(
                            children: [Icon(Icons.more_vert), Text("More")])),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          fun("Tony"),
          fun("Ameer"),
          fun("John"),
          fun("Ali"),
        ],
      ),
    );
  }
}
