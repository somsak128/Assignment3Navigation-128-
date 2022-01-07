import 'package:flutter/material.dart';
import 'package:routing/page/seconpage.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({ Key? key , required this.stdName, required this.stdID}) : super(key: key);

  final String stdName;
  final String stdID;

  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('ชื่อ-สกุล : ' + widget.stdName,
            ),
            Text('รหัสนิสิต : ' + widget.stdID),
            
            button(context),
          ],
        ),
      ),
    );
  }

  Widget button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                  );
                  Navigator.pop(context);
              }, 
              child: const Text('ไปหน้าที่ 2')
              ),
    );
  }
}