class RegisterModel {
  final String username;
  final String email;
  final String password;

  RegisterModel(
      {required this.username, required this.email, required this.password});
  factory RegisterModel.fromjson(json) {
    return RegisterModel(
        username: json['username'],
        email: json['email'],
        password: json['password']);
  }
}
