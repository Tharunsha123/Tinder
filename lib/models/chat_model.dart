// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:equatable/equatable.dart';

import 'models.dart';

class Chat extends Equatable {
  final int id;
  final int userId;
  final int matchUserId;
  final List<Message> messages;

  Chat({
    required this.id,
    required this.userId,
    required this.matchUserId,
    required this.messages,
  });

  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => [id, userId, matchUserId, messages];

  static List<Chat> chats = [
    Chat(
      id: 1,
      userId: 1,
      matchUserId: 2,
      messages: Message.messages
          .where((message) =>
              (message.senderId == 1 && message.receiverId == 2) ||
              (message.senderId == 2 && message.receiverId == 1))
          .toList(),
    ),
    Chat(
      id: 2,
      userId: 1,
      matchUserId: 3,
      messages: Message.messages
          .where((message) =>
              (message.senderId == 1 && message.receiverId == 3) ||
              (message.senderId == 3 && message.receiverId == 1))
          .toList(),
    ),
    Chat(
      id: 3,
      userId: 1,
      matchUserId: 5,
      messages: Message.messages
          .where((message) =>
              (message.senderId == 1 && message.receiverId == 5) ||
              (message.senderId == 5 && message.receiverId == 1))
          .toList(),
    ),
    Chat(
      id: 4,
      userId: 1,
      matchUserId: 6,
      messages: Message.messages
          .where((message) =>
              (message.senderId == 1 && message.receiverId == 6) ||
              (message.senderId == 6 && message.receiverId == 1))
          .toList(),
    ),
  ];
}
