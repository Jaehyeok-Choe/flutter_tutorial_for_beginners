import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Toast Message',
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast Message'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  flutterToast('This is flutter toast message!');
                },
                child: const Text('WOW')),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Text('Container 1'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Text('Container 2'),
                ),
                Container(
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                  child: const Text('Container 2'),
                ),
              ],
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Text('Container 3'),
            )
          ],
        ),
      ),
    );
  }
}

void flutterToast(msg) {
  Fluttertoast.showToast(
      msg: msg, // ????????? ??????
      toastLength: Toast.LENGTH_SHORT, // ????????? ?????? - ???????????????
      gravity: ToastGravity.BOTTOM, // ????????? ??????
      timeInSecForIosWeb: 1, // ????????? ?????? - iOS ??? ???
      backgroundColor: Colors.grey[800], // ??????
      textColor: Colors.white, // ??????
      fontSize: 16.0); // ?????? ??????
}
