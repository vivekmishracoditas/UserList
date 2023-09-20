import 'package:flutter/material.dart';
import 'grid_view_screen.dart';
import 'package:grid_design_app/Data/user_data.dart';
import 'package:grid_design_app/Service/user_list_api_service.dart';

class MaleController extends StatefulWidget {
  const MaleController({super.key});

  @override
  State<MaleController> createState() => _MaleControllerState();
}

class _MaleControllerState extends State<MaleController> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UserData>>(
      future: UserListAPIService().getUserList(true),
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
