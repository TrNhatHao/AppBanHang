class User {
  String email;
  String password;
  User({this.email, this.password});
  static List<User> init() {
    List<User> data = [
      User(
        email: "hao@gmail.com",
        password: "081299",
      ),
    ];
    return data;
  }
}
