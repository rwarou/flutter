import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/providers/counts.dart';
import 'package:my_app/widgets/buttons.dart';
import 'package:my_app/widgets/counter.dart';
// import 'package:flutter/services.dart';
// import 'ScreenA.dart';
// import 'ScreenB.dart';
// import 'ScreenC.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counts()),
      ],
      child: MyApp(),
    ),
  );
}

// splash
// Future<void> main() async {
//   bool data = await fetchData();

//   runApp(MyApp());
// }

// Future<bool> fetchData() async {
//   bool data = false;

//   await Future.delayed(Duration(seconds: 3), () {
//     data = true;
//   });

//   return data;
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'hot reloaded test'),
      // initialRoute: 'ScreenA',
      // routes: {
      //   'ScreenA': (context) => ScreenA(),
      //   'ScreenB': (context) => ScreenB(),
      //   'ScreenC': (context) => ScreenC(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

// class SecondScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Screen'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Home Screen'),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//       ),
//     );
//   }
// }

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // TextEditingController inputController = TextEditingController();
  // String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
      ),
      body: ChangeNotifierProvider(
        create: (BuildContext context) => Counts(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Counter(),
              Buttons(),
            ],
          ),
        ),
      ),
      // appBar: AppBar(
      //   title: Text('TextField'),
      // ),
      // body: Center(
      //   child: GestureDetector(
      //     onTap: () => FocusScope.of(context).unfocus(),
      //     child: SingleChildScrollView(
      //       child: Column(
      //         children: [
      //           // Container(
      //           //   width: 300,
      //           //   height: 300,
      //           //   margin: EdgeInsets.all(40),
      //           //   color: Colors.lightBlue,
      //           // ),
      //           Text('$inputText'),
      //           Padding(
      //             padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      //             child: TextField(
      //               // onChanged: (text) {
      //               //   setState(() {
      //               //     inputText = text;
      //               //   });
      //               // },
      //               controller: inputController,
      //               decoration: const InputDecoration(
      //                 labelText: 'Email',
      //                 labelStyle: TextStyle(color: Colors.redAccent),
      //                 hintText: 'Enter your email',
      //                 focusedBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(Radius.circular(10)),
      //                   borderSide:
      //                       BorderSide(width: 1, color: Colors.redAccent),
      //                 ),
      //                 enabledBorder: OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(Radius.circular(10)),
      //                   borderSide:
      //                       BorderSide(width: 1, color: Colors.blueAccent),
      //                 ),
      //                 border: OutlineInputBorder(
      //                   borderRadius: BorderRadius.all(Radius.circular(10)),
      //                 ),
      //                 // labelText: 'Input',
      //               ),
      //               keyboardType: TextInputType.emailAddress,
      //             ),
      //           ),
      //           ElevatedButton(
      //               onPressed: () {
      //                 setState(() {
      //                   inputText = inputController.text;
      //                 });
      //               },
      //               child: Text('Update'))
      //         ],
      //       ),
      //     ),
      //   ),
      // )
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         width: 300,
      //         height: 300,
      //         margin: EdgeInsets.all(40),
      //         color: Colors.lightBlue,
      //       ),
      //       const Padding(
      //         padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      //         child: TextField(
      //           decoration: InputDecoration(
      //             labelText: 'Email',
      //             labelStyle: TextStyle(color: Colors.redAccent),
      //             hintText: 'Enter your email',
      //             focusedBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(10)),
      //               borderSide: BorderSide(width: 1, color: Colors.redAccent),
      //             ),
      //             enabledBorder: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(10)),
      //               borderSide: BorderSide(width: 1, color: Colors.blueAccent),
      //             ),
      //             border: OutlineInputBorder(
      //               borderRadius: BorderRadius.all(Radius.circular(10)),
      //             ),
      //             // labelText: 'Input',
      //           ),
      //           keyboardType: TextInputType.emailAddress,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      // body: Center(
      //   child: Padding(
      //     child: TextField(
      //       decoration: InputDecoration(
      //         labelText: 'Email',
      //         labelStyle: TextStyle(color: Colors.redAccent),
      //         hintText: 'Enter your email',
      //         focusedBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(10),
      //           borderSide: BorderSide(width: 1, color: Colors.redAccent),
      //         ),
      //         enabledBorder: OutlineInputBorder(
      //           borderRadius: BorderRadius.circular(10),
      //           borderSide: BorderSide(width: 1, color: Colors.blueAccent),
      //         ),
      //         border: OutlineInputBorder(
      //           borderRadius: BorderRadius.all(Radius.circular(10)),
      //         ),
      //         // labelText: 'Input',
      //       ),
      //       keyboardType: TextInputType.emailAddress,
      //     ),
      //     padding: EdgeInsets.all(20),
      //   ),
      // ),
      // appBar: AppBar(
      //   title: Text('Drawer'),
      // ),
      // body: Center(
      //   child: Text('My Page !'),
      // ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: [
      //       // DrawerHeader(
      //       //   child: Text('DrawerHeader'),
      //       //   decoration: BoxDecoration(
      //       //     color: Colors.blue,
      //       //   ),
      //       // ),
      //       UserAccountsDrawerHeader(
      //         currentAccountPicture: CircleAvatar(
      //           backgroundColor: Colors.grey,
      //         ),
      //         otherAccountsPictures: [
      //           CircleAvatar(
      //             backgroundColor: Colors.blueGrey,
      //           )
      //         ],
      //         accountName: Text('Rwarou'),
      //         accountEmail: Text('rwarou.yim@gmail.com'),
      //         onDetailsPressed: () {},
      //         decoration: BoxDecoration(
      //           color: Colors.blue[300],
      //           borderRadius: BorderRadius.only(
      //             bottomLeft: Radius.circular(40),
      //             bottomRight: Radius.circular(40),
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         title: Text('Item 1'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         title: Text('Item 2'),
      //         onTap: () {
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      // appBar: AppBar(
      //   title: const Text('Navigator'),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('Second Screen'),
      //     onPressed: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => SecondScreen(),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // appBar: AppBar(
      //   title: const Text('Snack Bar'),
      // ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: const Text('show Snackbar'),
      //     onPressed: () {
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         SnackBar(
      //           content: const Text('Hello world'),
      //           backgroundColor: Colors.teal,
      //           duration: const Duration(milliseconds: 1000),
      //           behavior: SnackBarBehavior.floating,
      //           action: SnackBarAction(
      //             label: 'Undo',
      //             textColor: Colors.white,
      //             onPressed: () {},
      //           ),
      //           shape: RoundedRectangleBorder(
      //               borderRadius: BorderRadius.circular(20),
      //               side: const BorderSide(
      //                 color: Colors.red,
      //                 width: 2,
      //               )),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      // appBar: AppBar(
      //   title: Text('Image Widget'),
      // ),
      // body: const Center(
      //   child: Image(
      //     image: AssetImage('assets/flower-01.png'),
      //     width: 100,
      //     height: 100,
      //     fit: BoxFit.fill,
      //   ),
      // ),
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
