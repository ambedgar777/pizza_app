import 'package:user_repository/src/entities/entities.dart';

class MyUser {
  String userId;
  String email;
  String name;
  bool hasActiveCart;

  MyUser({
    required this.userId,
    required this.email,
    required this.name,
    required this.hasActiveCart,
  });

  static final empty = MyUser(
    userId: '',
    email: '',
    name: '',
    hasActiveCart: false,
  );

  ///MyUserEntity class transforms the classes into Json Map
  ///And In the database it transforms the Json Map to the app.
  ///MyUserEntity takes the MyUser object and it transforms it into MyUserEntity Object,
  ///and then it transforms into the json map that goes into the database.
  MyUserEntity toEntity() {
    return MyUserEntity(
      userId: userId,
      email: email,
      name: name,
      hasActiveCart: hasActiveCart,
    );
  }

  ///Having an entry into Json Map database, and then it transforms the database into MyUserEntity object
  ///and MyUserEntity Object transforms it into MyUser object that we can use within our app.
  static MyUser fromEntity(MyUserEntity entity) {
    return MyUser(
      userId: entity.userId,
      email: entity.email,
      name: entity.name,
      hasActiveCart: entity.hasActiveCart,
    );
  }

  @override
  String toString() {
    return 'MyUser: $userId, $email, $name, $hasActiveCart';
  }
}
