import 'package:flutter/material.dart';
import 'package:fruit_hub/core/helper_funcations/on_generate_route.dart';
import 'package:fruit_hub/features/splash/presentation/splashscreen.dart';

void main() {
  runApp(const FruitHub());
}

class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: Splashscreen.routeName,
    );
  }
}