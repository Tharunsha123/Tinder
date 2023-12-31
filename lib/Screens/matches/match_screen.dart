import 'package:flutter/material.dart';

class MatchesScreen extends StatelessWidget {
  static const String routeName = '/match';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => MatchesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
