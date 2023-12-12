import 'package:alemeno_app/controller/cart_controller.dart';
import 'package:alemeno_app/controller/datetime_controller.dart';
import 'package:provider/provider.dart';
import 'package:alemeno_app/view/screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => CartController(),
        ),
        ChangeNotifierProvider(
          create: (context) => DateTimeController(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            radioTheme: RadioThemeData(
              fillColor: MaterialStateProperty.all(Colors.deepPurple),
            ),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
            fontFamily: 'Inter'),
        home: const HomeScreen(),
      ),
    );
  }
}
