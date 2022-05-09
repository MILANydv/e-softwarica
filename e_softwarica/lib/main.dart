import 'package:e_softwarica/screens/home_screen.dart';
import 'package:e_softwarica/screens/list_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/list',
        routes: {
          '/': (context) => const HomeScreen(),
          '/list': (context) => const ListScreen(),
        });
  }
}
