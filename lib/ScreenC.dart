import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Navigator.popUntil(context, (route) => route.isFirst);
                Navigator.popUntil(context, ModalRoute.withName('ScreenA'));
              },
              child: Text('Home'),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            //   child: Text('Back'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, 'ScreenA');
            //   },
            //   child: Text('Screen A'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, 'ScreenB');
            //   },
            //   child: Text('Screen B'),
            // ),
          ],
        ),
      ),
    );
  }
}
