class LoginRequestModel {
  late final String email;
  late final String password;

  // LoginRequestModel({this.email, this.password});

  LoginRequestModel.fromJson(
      Map<String, dynamic> json, this.email, this.password) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
} 
