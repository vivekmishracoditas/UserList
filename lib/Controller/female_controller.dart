import 'package:flutter/material.dart';
import 'grid_view_screen.dart';
import 'package:grid_design_app/Service/user_list_api_service.dart';
import 'package:grid_design_app/Data/user_data.dart';

class FemaleController extends StatefulWidget {
  const FemaleController({super.key});

  @override
  State<FemaleController> createState() => _FemaleControllerState();
}

class _FemaleControllerState extends State<FemaleController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserData>>(
      future: UserListAPIService().getUserList(false),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return GridViewScreen().getGridView(context, snapshot.data!);
        } else {
          return const Center(child: Text('Some error occured!'));
        }
      },
    );
  }
}
