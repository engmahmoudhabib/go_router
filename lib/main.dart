import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:routingone/pages/home.dart';
import 'package:routingone/pages/profile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: GoRouter(
        routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const Home(),
          ),
          GoRoute(
            path: '/profile',
            builder: (context, state) => const Profile(),
          )
        ],
      ),
    );
  }
}
