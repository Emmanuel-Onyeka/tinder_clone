import 'package:flutter/material.dart';

class UserLikesScreen extends StatelessWidget {
  const UserLikesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppBar(
        bottom: Tab(),
      ),
    );
  }
}
