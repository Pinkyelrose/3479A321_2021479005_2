import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(const MyApp());
}

var logger = Logger();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    logger.d("Logger is working!");
    return MaterialApp(
      title: '2021479005',
      theme: ThemeData(
        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purple,
          // TRY THIS: Change to "Brightness.light"
          //           and see that all colors change
          //           to better contrast a light background.
          brightness: Brightness.dark,
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          displayLarge: const TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // TRY THIS: Change one of the GoogleFonts
          //           to "lato", "poppins", or "lora".
          //           The title uses "titleLarge"
          //           and the middle text uses "bodyMedium".
          titleLarge: TextStyle(
            fontSize: 30,
            fontStyle: FontStyle.italic,
          ),
          bodyMedium: TextStyle(),
          displaySmall: TextStyle(),
        ),
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
    
    logger.d("Logger is working!");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Haz apretado el boton:'),
            Text(
              '$_counter veces',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset(
              'assets/image/Pixel-Art-Hot-Pepper-2-1.webp',
              width: 100,
              height: 100,
              ),
            const SizedBox(width: 16,),
            Image.asset(
              'assets/image/Pixel-ArtPizza-2.webp',
              width: 100,
              height: 100,
              ),
            const SizedBox(width: 16,),
            Image.asset(
              'assets/image/Pixel-Art-Watermelon-3.webp',
              width: 100,
              height: 100,
              ),
            const SizedBox(width: 16,),
            Row(
              
              children: <Widget>[
                Image.asset('assets/image/Pixel-Art-Hot-Pepper-2-1.webp'),
                Image.asset('assets/image/Pixel-ArtPizza-2.webp'),
                Image.asset('assets/image/Pixel-Art-Watermelon-3.webp'),
              ],
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
