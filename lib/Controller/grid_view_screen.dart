import 'package:flutter/material.dart';
import 'package:grid_design_app/Data/user_data.dart';
import 'user_details_controller.dart';

class GridViewScreen {
  Widget getGridView(BuildContext context, List<UserData> users) {
    return GridView.builder(
      itemCount: users.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => UserDetailsController(
                  user: users[index],
                ),
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              padding: const EdgeInsets.only(bottom: 8),
              color: Colors.lightBlueAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: Image.network(users[index].imageURL),
                  ),
                  Text(users[index].name),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
