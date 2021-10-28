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
      ),
      home: MyHomePage(title: 'hot reloaded test'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget'),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('assets/flower-01.png'),
          width: 100,
          height: 100,
          fit: BoxFit.fill,
        ),
      ),
      // body: Column(
      //   children: [
      //     Container(
      //       color: Colors.amber,
      //       width: 100,
      //       height: 100,
      //     ),
      //     SizedBox(
      //       height: 200,
      //     ),
      //     Container(
      //       color: Colors.yellow,
      //       width: 100,
      //       height: 100,
      //     ),
      //     SizedBox(
      //       height: 50,
      //     ),
      //     Container(
      //       color: Colors.grey,
      //       width: 100,
      //       height: 100,
      //     ),
      //   ],
      // ),
      // body: Stack(
      //   children: [
      //     Container(
      //       width: 400,
      //       height: 400,
      //       color: Colors.amber,
      //     ),
      //     Container(
      //       width: 200,
      //       height: 200,
      //       color: Colors.amberAccent,
      //     ),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.blueAccent,
      //     ),
      //   ],
      // ),
      // body: Column(
      //   children: [
      //     Expanded(
      //       child: Container(color: Colors.red),
      //       flex: 3,
      //     ),
      //     Expanded(
      //       child: Container(color: Colors.lightGreenAccent),
      //       flex: 1,
      //     ),
      //     Expanded(
      //       child: Container(color: Colors.amber),
      //       flex: 2,
      //     ),
      //   ],
      // ),
      //     body: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     Container(width: 100, height: 100, color: Colors.red),
      //     Container(width: 100, height: 100, color: Colors.blue),
      //     Container(width: 100, height: 100, color: Colors.blueGrey),
      //   ],
      // )
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   children: [
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.red,
      //     ),
      //     Container(width: 100, height: 100, color: Colors.black),
      //     Container(
      //       width: 100,
      //       height: 100,
      //       color: Colors.green,
      //     )
      //   ],
      // ),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: Container(
      //   child: Text('Hello world', style: TextStyle(color: Colors.red)),
      //   padding: EdgeInsets.fromLTRB(20, 30, 40, 50),
      //   margin: EdgeInsets.all(100),
      //   width: 200,
      //   height: 100,
      //   transform: Matrix4.rotationZ(0.5),
      //   decoration: BoxDecoration(
      //     color: Colors.yellow,
      //     border: Border.all(color: Colors.black, width: 3),
      //     borderRadius: BorderRadius.all(Radius.circular(18)),
      //     boxShadow: const [BoxShadow(blurRadius: 10)],
      //   ),
      // ),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headline4,
      //       ),
      //     ],
      //   ),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
