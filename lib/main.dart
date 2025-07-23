import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:intern_restaurant/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(RestaurantApp());
}

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Restaurant App', home: Placeholder());
  }
}
