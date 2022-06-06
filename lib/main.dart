import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web1/constants.dart';
import 'package:web1/logic/page_provider.dart';
import 'package:web1/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: ((context) => Open()),
        ),
        ChangeNotifierProvider(
          create: ((context) => PageProvider()),
        ),
        ChangeNotifierProvider(
          create: ((context) => Controller()),
        ),
      ],
      child: MaterialApp(
        title: 'BAXY web',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
          primaryColor: kPrimaryColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}
