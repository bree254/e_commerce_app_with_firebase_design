import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'app.dart';
import 'firebase_options.dart';

void main() async {
  // Todo : Add widgets Binding
  // Todo : Init Local Storage
  // Todo : Await Native Splash

  // Todo : Initialize Firebase
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Todo : Initialize Authentication


  runApp(const MyApp());
}

