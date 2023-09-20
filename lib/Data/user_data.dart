class UserData {
  String name;
  String email;
  String phone;
  String imageURL;

  UserData({
    required this.name,
    required this.email,
    required this.phone,
    required this.imageURL,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    final name =
        '${json['name']['title']} ${json['name']['first']} ${json['name']['last']}';
    final email = json['email'];
    final phone = json['phone'];
    final imageURL = json['picture']['large'];

    return UserData(
      name: name,
      email: email,
      phone: phone,
      imageURL: imageURL,
    );
  }
}
