import 'package:flutter/material.dart';
import 'package:routing/page/firstpage.dart';
import 'package:routing/page/thaidpage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({ Key? key }) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final _forkey = GlobalKey<FormState>();
  final TextEditingController _stdName = TextEditingController();
  final TextEditingController _stdID = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            title(),
            const SizedBox(height: 10,),
            Name(),
            ID(),
            // ignore: prefer_const_constructors
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                button1(context),
                const SizedBox(width: 10,),
                button(context),
              ],
            ),
            
          ],
        ),
      ),
    );
  }

  Padding title() {
    return const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Second Page',
            style: TextStyle(fontSize: 20),
            ),
          );
  }

  ElevatedButton button1(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              var route = MaterialPageRoute(
                builder: (context) => const FirstPage(),
                );
                Navigator.pop(context);
            }, 
            child: const Text('ไปหน้าเเรก')
            );
  }

  ElevatedButton button(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              
              var route = MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    stdName: _stdName.text,
                    stdID: _stdID.text,
                  ),
                );
                Navigator.push(context, route);
            }, 
            child: const Text('ยืนยัน ส่งค่าข้อมูล')
            );
  }

  // ignore: non_constant_identifier_names
  Widget ID() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
      child: TextFormField(
                  obscureText: true,
                  controller: _stdID,
                  validator: (value){
                    if (value!.isEmpty){
                      return ' Please Enter Student ID !';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Student ID',
                    prefixIcon: Icon(Icons.contact_mail_outlined),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2.0
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2.0
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0
                      ),
                    ),
                  ),
                ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Name() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 3),
      child: TextFormField(
                  controller: _stdName,
                  validator: (value){
                    if (value!.isEmpty){
                      return ' Please Enter Username !';
                    }
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name-Surname',
                    prefixIcon: Icon(Icons.assignment_ind_outlined),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2.0
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.indigo,
                        width: 2.0
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.red,
                        width: 2.0
                      ),
                    ),
                  ),
                ),
    );
  }
}

  