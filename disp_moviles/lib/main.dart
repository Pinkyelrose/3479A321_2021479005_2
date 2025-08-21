import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '2021479005',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  void _resetCounter(){
    setState(() {
      _counter=startingValue;
    });
  }

  int startingValue = 16;

  @override
  Widget build(BuildContext context) {
    


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Haz apretado el boton:'),
            Text(
              '$_counter veces',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'decrement',
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: _resetCounter,
          tooltip: 'reset',
          child: const Icon(Icons.restart_alt_sharp),
        )
      ],
    );
  }
}
