import 'package:bloc_training/presentation/screens/home_screen.dart';
import 'package:bloc_training/presentation/screens/second_screen.dart';
import 'package:bloc_training/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(
            title: 'Home Screen',
            color: Colors.blueAccent,
          ),
        );
      case '/second':
        return MaterialPageRoute(
            builder: (_) => const SecondScreen(
                  title: 'Second Screen',
                  color: Colors.redAccent,
                ));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => const ThirdScreen(
                  title: 'Third Screen',
                  color: Colors.greenAccent,
                ));
      default:
        throw Exception('Unsupported route: ${routeSettings.name}');
    }
  }
}
