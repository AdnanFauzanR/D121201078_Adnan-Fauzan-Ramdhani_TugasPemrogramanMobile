import 'package:flutter/material.dart';
import 'package:tugas_pemrograman_mobile/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyLoginPage(title: 'Login Page'),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key, required this.title});
  final String title;

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage>{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:Align(
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              Container(
                margin: const EdgeInsets.all(10),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyProfilePage(title: 'Profile Page')),
                  );
                },
                  child: const CircleAvatar(
                  //backgroundColor: Colors.grey,
                  radius: 100,
                  backgroundImage: AssetImage('assets/patrick.jpg'),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('Adnan Fauzan Ramdhani'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('Bermain Game'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
              Container(
                width: 300,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Text('White'),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange, width: 5)
                ),
              ),
            ],
          ),
        ),
      );
    }
  }