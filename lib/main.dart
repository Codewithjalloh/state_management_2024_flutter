import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_2024_flutter/counter_model.dart';
import 'package:state_management_2024_flutter/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'State Management Provider',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'State M Home Page'),
    );
  }
}
