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
      title: 'Custum paint ',
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

    //-------------------------------------------------------------------------------------
    var b = Rect.fromLTRB(size.width / 8, size.height / 2, 310, 250);
    paint.color = Colors.red;
    canvas.drawRect(b, paint);

    //-----------------------------------------
    paint.color = Colors.orange;
    paint.strokeWidth = 15;
    var m1 = const Offset(0, 350);
    var m2 = const Offset(200, 0);
    canvas.drawLine(m1, m2, paint);

    //-----------------------------------------
    paint.color = Colors.white;
    paint.strokeWidth = 15;
    var m3 = Offset(size.width, 350);
    var m4 = Offset(200, 0);
    canvas.drawLine(m3, m4, paint);

    //-----------------------------------------
    paint.color = Colors.greenAccent;
    paint.strokeWidth = 15;
    var m5 = Offset(0, 275);
    var m6 = Offset(700, 275);
    canvas.drawLine(m5, m6, paint);

    //-----------------------------------------
    paint.color = Colors.black;
    paint.strokeWidth = 15;
    var m7 = Offset(0, 300);
    var m8 = Offset(700, 300);
    canvas.drawLine(m5, m6, paint);

    //-------------------------------------------------------------------------------------
    var v = Rect.fromLTRB(size.width / 2.3, size.height / 1.3, 80, 90);
    paint.color = Colors.black;
    canvas.drawRect(v, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
