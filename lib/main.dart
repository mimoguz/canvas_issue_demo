import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: const Scaffold(body: Center(child: DemoWidget())),
    );
  }
}

class DemoWidget extends StatelessWidget {
  const DemoWidget({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
    width: 20.0,
    height: 60.0,
    child: CustomPaint(painter: DemoPainter()),
  );
}

class DemoPainter extends CustomPainter {
  final Paint _paint = Paint()
    ..strokeWidth = 1.0
    ..color = Colors.red;

  @override
  void paint(Canvas canvas, Size size) {
    for (var i = 0; i < 3; i++) {
      final offset = Offset(10.0, i * 20.0 + 10.0);

      _paint.style = PaintingStyle.stroke;
      canvas.drawCircle(offset, 4.5, _paint);

      _paint.style = PaintingStyle.fill;
      canvas.drawCircle(offset, 2.0, _paint);
    }
  }

  @override
  bool shouldRepaint(DemoPainter oldDelegate) => false;
}
