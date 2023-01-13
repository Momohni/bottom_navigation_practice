import 'package:flutter/material.dart';

class Defaults {
  static final Color bottomNavItemColor = Colors.blueGrey;
  static final Color bottomNavItemSelectedColor = Color.fromARGB(255, 25, 118, 210);

  static final bottomNavItemText = [
    'Inbox',
    'Starred',
    'Sent',
    'Drafts',
    'Trash',
    'Spam',
  ];

  static final bottomNavItemIcon = [
    Icons.inbox,
    Icons.star,
    Icons.send,
    Icons.mail,
    Icons.delete,
    Icons.warning_rounded,
  ];
}
