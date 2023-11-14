class UserModel {
  final String msg;
  final UserData? data;
  final int codeState;

  UserModel({
    required this.msg,
    required this.data,
    required this.codeState,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      msg: json['msg'] ?? '',
      data: json['data'] != null ? UserData.fromJson(json['data']) : null,
      codeState: json['codeState'] ?? 0,
    );
  }
}

class UserData {
  final int id;
  final String name;
  final String email;
  final String? titlePosition;
  final String phone;
  final String? location;
  final String? birthday;
  final String? about;
  final String? image;
  final String createAt;

  UserData({
    required this.id,
    required this.name,
    required this.email,
    this.titlePosition,
    required this.phone,
    this.location,
    this.birthday,
    this.about,
    this.image,
    required this.createAt,
  });

  factory UserData.fromJson(Map<String, dynamic> json) {
    return UserData(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      titlePosition: json['title_position'],
      phone: json['phone'] ?? '',
      location: json['location'],
      birthday: json['birthday'],
      about: json['about'],
      image: json['image'],
      createAt: json['create_at'] ?? '',
    );
  }
}
