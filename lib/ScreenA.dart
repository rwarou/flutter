import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return WillPopScope(
    //   onWillPop: () async => false,
    //   child: Scaffold(

    //   ),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ScreenB');
                  // Navigator.pushNamed(context, 'ScreenB').then((value) => {});
                },
                child: const Text('Screen B')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'ScreenC');
                },
                child: const Text('Screen C')),
          ],
        ),
      ),
    );
  }
}
