class UserModel {
  String? name;
  String? email;
  String? id;
  String? password;
  UserModel({required this.name, required this.email, required this.id,required this.password});
  UserModel.fromJson({required Map<String, dynamic> data}) {
    name = data['name'];
    email = data['email'];
    id = data['id'];
    password = data ['password'];
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'id': id,
      'password': password,

    };
  }
}
