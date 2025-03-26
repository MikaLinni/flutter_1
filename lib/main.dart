import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isTextVisible = false;
  bool _isWidgetVisible = true;
  Color _bgColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: _bgColor,
        appBar: AppBar(title: Text('Flutter Buttons App')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_isTextVisible)
                Text('Hello, Flutter!', style: TextStyle(fontSize: 24)),
              SizedBox(height: 20),
              if (_isWidgetVisible)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _isTextVisible = true;
                    });
                  },
                  child: Text('Show Text'),
                ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isWidgetVisible = !_isWidgetVisible;
                  });
                },
                child: Text('Hide/Show Widget'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _bgColor =
                        _bgColor == Colors.white
                            ? Colors.blueGrey
                            : Colors.white;
                  });
                },
                child: Text('Change Background Color'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
