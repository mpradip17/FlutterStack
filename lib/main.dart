import 'package:flutter/material.dart';

void main() {
  runApp(const MyIndexedStack());
}

/*** Stack Widget ****/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget"),
          ),
          body: Center(
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                // Max Size Widget
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'Top Widget: Green',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 20,
                  child: Container(
                    height: 100,
                    width: 150,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        'Middle Widget',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 30,
                    left: 20,
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.orange,
                      child: const Center(
                        child: Text(
                          'Bottom Widget',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    )
                ),
              ],
            ),
          )
      ),
    );
  }
}

/*** IndexedStack Widget ****/

class MyIndexedStack extends StatelessWidget {
  const MyIndexedStack({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:Scaffold(
          appBar: AppBar(
            title: Text("Flutter Stack Widget"),
          ),
          body: Center(
            child:  IndexedStack(
              index: 0,
              children: <Widget>[
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.green,
                  child: const Center(
                    child: Text(
                      'First Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  color: Colors.blue,
                  child: const Center(
                    child: Text(
                      'Second Widget',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
      )
      ),
    );
  }
}