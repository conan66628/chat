import 'package:chat/interfaz/chat.dart';
import 'package:chat/interfaz/login.dart';
import 'package:chat/proceso/autenticacion.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reto 3',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'MinTic-Reto No 3'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Autenticacion().estadoLogin,
        builder: (context, respuesta) {
          if (respuesta.hasData) {
            return chat();
          } else {
            return login();
          }
        });
  }
}
