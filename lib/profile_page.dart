import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const MyProfilePage(title: 'Profile Page'),
    );
  }
}

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key, required this.title});
  final String title;

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget> [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset('assets/patrick.jpg'),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5, top: 10),
                    padding: EdgeInsets.all(10),
                    width: 230,
                    child: Text(
                      'Adnan Fauzan',style: TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2)
                    ),
                  ),
                  Container(
                    width: 230,
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Bermain Game', style: TextStyle(
                      fontSize: 18)
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange, width: 2)
                    ),
                  ),
                  Container(
                    width: 230,
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text(
                        '😃😃😃', style: TextStyle(
                        fontSize: 18)
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          margin: EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text('Just a normal person'),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.orange, width: 2)
          ),
        ),
        Container(
          height: 200,
          width: 350,
          margin: EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 10),
          padding: EdgeInsets.all(10),
          child: Text('Waiting someone who comeback in this week',
              maxLines: 8),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.orange, width: 2)
            ),
          ),
        ],
      ),
    );
  }
}