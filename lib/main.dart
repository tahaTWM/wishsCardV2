import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> Names = <String>[
    'Taha',
    'TWM',
    'Tony',
    'ALi',
    'John',
    'Sara',
    'Ameer',
  ];
  final List<String> wishes = <String>[
    'In 2021 I wanna B Happy',
    'In 2021 I Wanna B rich',
    'In 2021 I wanna B Teacher',
    'In 2021 I Wanna B Doctor',
    'In 2021 I wanna B Programmer',
    'In 2021 I Wanna B M',
    'In 2021 I wanna B T',
  ];
  final List<String> times = <String>[
    'jan - 10 -2020',
    'In 2021 I Wanna B rich',
    'In 2021 I wanna B Teacher',
    'In 2021 I Wanna B Doctor',
    'In 2021 I wanna B Programmer',
    'In 2021 I Wanna B M',
    'In 2021 I wanna B T',
  ];

  // final List<int> colorCodes = <int>[
  //   600,
  //   500,
  //   100,
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: Names.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.pinkAccent,
                ),
                height: 150,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                      color: Colors.pinkAccent,
                      child: ListTile(
                        leading: FlutterLogo(size: 56.0),
                        title: Text(Names[index]),
                        subtitle: Text("Nov/20/2020"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 30),
                      child: Text(
                        wishes[index],
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ],
                ),
                // height: 50,
                // color: Colors.red,
                // child: Center(child: Text('Entry ${Names[index]}')),
              ),
            );
          }),
    );
  }
}
