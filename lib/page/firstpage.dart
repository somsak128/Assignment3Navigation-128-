import 'package:flutter/material.dart';
import 'package:routing/page/seconpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({ Key? key }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text('First Page',
              style: TextStyle(fontSize: 20),
              
              ),
            ),
            ElevatedButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (context) => const SecondPage(),
                  );
                  Navigator.push(context, route);
              }, 
              child: const Text('ไปหน้าที่ 2')
              ),
          ],
        ),
      ),
    );
  }
}