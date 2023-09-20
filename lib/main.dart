import 'package:flutter/material.dart';
import 'Controller/male_controller.dart';
import 'Controller/female_controller.dart';

void main() {
  runApp(const UserList());
}

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('User List'),
            bottom: const TabBar(
              tabs: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Male'),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Female'),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            MaleController(),
            FemaleController(),
          ]),
        ),
      ),
    );
  }
}
