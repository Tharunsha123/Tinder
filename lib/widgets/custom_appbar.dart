// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool hasActions;
  const CustomAppbar({
    super.key,
    required this.title,
    this.hasActions = true,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      title: Row(
        children: [
          Expanded(
            child: Image.asset('assets/images/logo1.png'),
          ),
          Expanded(
            flex: 2,
            child: ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (bounds) {
                return LinearGradient(
                  colors: [
                    Color.fromARGB(255, 160, 20, 236),
                    Color.fromARGB(255, 230, 62, 40),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ).createShader(bounds);
              },
              child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 28),
              ),
            ),
          ),
        ],
      ),
      actions: hasActions
          ? [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.message,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  )),
            ]
          : null,
    );
  }

  @override
  // ignore: todo
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(56.0);
}
