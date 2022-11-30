import 'package:chat/interfaz/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyDhUpGODbe4Qpr4bCo0URc28dd6iwfiDiU",
          authDomain: "reto3-chat-7a263.firebaseapp.com",
          projectId: "reto3-chat-7a263",
          storageBucket: "reto3-chat-7a263.appspot.com",
          messagingSenderId: "1071146206291",
          appId: "1:1071146206291:web:61e7bd4b5427745217f2a6",
          measurementId: "G-ZBCD3NZ9TT"));
  runApp(const MyApp());
  runApp(const MyApp());
}
