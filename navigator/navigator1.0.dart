import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Demo',
      home: ScreenOne(),
    );
  }
}

class ScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen One"),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("Next"),
          onPressed: () async {
            final result = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ScreenTwo(),
                settings:
                    const RouteSettings(arguments: "data from Screen One"),
              ),
            );
            print(result);
          },
        ),
      ),
    );
  }
}

class ScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final text = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            const Text("Screen Two"),
            ElevatedButton(
                onPressed: () async {
                  Navigator.pop(
                    context,
                    "Yes",
                  );
                },
                child: const Text("Go Back"))
          ],
        ),
      ),
      body: Center(
        child: Text(text),
      ),
    );
  }
}
