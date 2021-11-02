import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenA');
              },
              child: Text('Screen A'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, 'ScreenC');
              },
              child: Text('Screen C'),
            ),
          ],
        ),
      ),
    );
  }
}
