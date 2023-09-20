import 'package:dio/dio.dart';
import 'package:grid_design_app/Data/user_data.dart';
import 'dart:convert';

class UserListAPIService {
  final dio = Dio();

  Future<List<UserData>> getUserList(bool isMaleList) async {
    String userType = isMaleList ? 'male' : 'female';
    final response =
        await dio.get('https://randomuser.me/api/?gender=$userType&results=20');
    // String jsonResponse = response.data;
    Map<String, dynamic> data = json.decode(response.toString());
    List<dynamic> results = data['results'];
    List<UserData> users =
        results.map((json) => UserData.fromJson(json)).toList();
    return users;
  }
}
