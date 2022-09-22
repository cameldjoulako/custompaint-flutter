import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custum painter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Custum painter'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            // ignore: avoid_print
            onPressed: () => print("bonjour"),
            icon: const Icon(
              Icons.airplanemode_active,
              color: Colors.white,
            ),
          )
        ],
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 18.0, color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: CustomPaint(
          painter: Drawer(),
          // ignore: sized_box_for_whitespace
          child: Container(
            height: 600,
            width: 450,
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Drawer extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    paint.color = Colors.yellowAccent;
    var position = Offset(size.width / 1.2, size.height / 8);
    canvas.drawCircle(position, 60, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
