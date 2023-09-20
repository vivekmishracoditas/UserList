import 'package:flutter/material.dart';
import 'package:grid_design_app/Data/user_data.dart';

class UserDetailsController extends StatelessWidget {
  const UserDetailsController({super.key, required this.user});
  final UserData user;

  @override
  Widget build(BuildContext context) {
    String name = user.name;
    String email = user.email;
    String phone = user.phone;

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(user.imageURL),
              Text('Name: $name'),
              Text('Email: $email'),
              Text('Phone: $phone'),
            ],
          ),
        ),
      ),
    );
  }
}
