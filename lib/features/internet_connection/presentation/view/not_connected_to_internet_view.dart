import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotConnectedToInternetView extends StatelessWidget {
  const NotConnectedToInternetView({super.key});
  static GoRouter notConnectedToInternetRouter = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NotConnectedToInternetView(),
    ),
  ]);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("you're not connected to the internet"),
            ],
          ),
        ),
      ),
    );
  }
}
