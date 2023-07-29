import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static const String routeName = '/chats';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => ChatScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
