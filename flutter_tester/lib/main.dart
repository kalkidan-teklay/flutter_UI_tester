import 'package:flutter/material.dart';
import './text_editor.dart';
import './device_preview.dart';

void main() {
  runApp(const FlutterUIPlayground());
}

class FlutterUIPlayground extends StatelessWidget {
  const FlutterUIPlayground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Tester',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // Use dark theme for developer vibes
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter UI Tester'),
        backgroundColor: Colors.black,
        actions: [
          Row(children : <Widget>[
            SizedBox(width: 20.0,),
            Padding(padding: EdgeInsets.all(10.0)),
            Text('Home'),
            SizedBox(width: 20.0,),
            Text('Documentation'),
            SizedBox(width: 20.0,),
            Text('Github'),
            SizedBox(width: 20.0,),
            Text('Get Started'),
            Padding(padding: EdgeInsets.all(10.0)),

          ],)
          
        ]
       
      ),
      body: Column(
  children: [
    Expanded(
      child: Row(
        children: [
          // Left Side: Code Editor
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey[900],
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: TextEditor(),
              ),
            ),
          ),

          // Right Side: Device Preview
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.grey[850],
              child: const Center(
                child: DevicePreview(),
              ),
            ),
          ),
        ],
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 241, 236, 221),
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
        ),
        onPressed: (null), 
        child: const Text(
          'Preview',
          style: TextStyle(color: Color.fromARGB(255, 239, 232, 232)),
        ),
      ),
    ),
  ],
),

      
       
    );
    
  }
}




