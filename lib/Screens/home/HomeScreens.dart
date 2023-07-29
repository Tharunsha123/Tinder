// ignore_for_file: prefer_const_constructors, unnecessary_import, unused_import, prefer_const_literals_to_create_immutables, unnecessary_string_interpolations, sort_child_properties_last, avoid_single_cascade_in_expression_statements

import 'package:flutter/material.dart';

import 'package:tinder_1/models/models.dart';
import 'package:tinder_1/widgets/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/swipe_bloc.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (context) => HomeScreen(),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: 'Eudora',
        hasActions: true,
      ),
      body: BlocBuilder<SwipeBloc, SwipeState>(
        builder: (context, state) {
          if (state is SwipeLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is SwipeLoaded) {
            return Column(
              children: [
                InkWell(
                  onDoubleTap: () {
                    Navigator.pushNamed(context, '/users',
                        arguments: state.users[0]);
                  },
                  child: Draggable<User>(
                    child: UserCard(
                      user: state.users[0],
                    ),
                    feedback: UserCard(
                      user: state.users[0],
                    ),
                    childWhenDragging: UserCard(
                      user: state.users[1],
                    ),
                    onDragEnd: (drag) {
                      if (drag.velocity.pixelsPerSecond.dx < 0) {
                        context.read<SwipeBloc>()
                          ..add(SwipeLeftEvent(user: state.users[0]));
                        print('Swiped left');
                      } else {
                        context.read<SwipeBloc>()
                          ..add(SwipeRightEvent(user: state.users[0]));
                        print('Swiped right');
                      }
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 60),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeLeftEvent(user: state.users[0]));
                          print('Swiped left');
                        },
                        child: ChoiceButton(
                          height: 50,
                          width: 50,
                          size: 25,
                          icon: Icons.clear_rounded,
                          color: Color.fromARGB(255, 239, 6, 107),
                          hasGradient: false,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          context.read<SwipeBloc>()
                            ..add(SwipeRightEvent(user: state.users[0]));
                          print('Swiped Right');
                        },
                        child: ChoiceButton(
                          height: 60,
                          width: 60,
                          size: 30,
                          icon: Icons.favorite,
                          color: Colors.white,
                          hasGradient: true,
                        ),
                      ),
                      ChoiceButton(
                        height: 50,
                        width: 50,
                        size: 25,
                        icon: Icons.watch_later,
                        color: Color.fromARGB(255, 239, 6, 107),
                        hasGradient: false,
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Text('Somthing Went Wrong');
          }
        },
      ),
    );
  }
}
