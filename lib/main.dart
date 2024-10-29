import 'package:flutter/material.dart';
import 'package:pointup/routes/routes_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color(0xff19184D),
        secondaryHeaderColor: const Color(0xffF99F1E),
        hintColor: const Color(0xffA1A2A8),
        errorColor: const Color(0xffEF2253),
      ),
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute:Routes.splashRoute,

    );
  }
}
