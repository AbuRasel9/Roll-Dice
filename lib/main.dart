import 'package:flutter/material.dart';
import 'package:udemy/gradient_container.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoApp(),

    );
  }
}
class DemoApp extends StatefulWidget {
  const DemoApp({super.key});

  @override
  State<DemoApp> createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(colors: [
        Colors.orange.shade900,
        Colors.orange.shade600,
        Colors.orange.shade400,
      ],),
    );
  }
}


