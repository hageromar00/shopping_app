import 'package:flutter/material.dart';
import 'package:shopping_app/core/utils/router.dart';
import 'package:shopping_app/presentation_layer/home_views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
   debugShowCheckedModeBanner: false,
    theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: 'Suwannaphum', // uses the custom font if available
      ),
   routerConfig: AppRouter.router,
    );
  }
}
