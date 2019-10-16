class User {
  int id;
  String name;
  String email;
  String pass;
  User(
    this.name,
    this.email,
    this.pass,
  );
  User.map(dynamic obj) {
    this.name = obj["name"];
    this.email = obj["email"];
    this.pass = obj["pass"];
  }
  void setUserId(int id) {
    this.id = id;
  }

  int get getId => id;
  String get getName => name;
  String get getEmail => email;
  String get getPass => pass;

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      "name": this.name,
      "email": this.email,
      "pass": this.pass
    };
    return map;
  }
}
