import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ViewPageNavigator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(child: ViewPageNavigator(modelname: 'Youtube')),
            Expanded(child: ViewPageNavigator(modelname: 'Twitch')),
          ],
        ),
      ),
    );
  }
}
