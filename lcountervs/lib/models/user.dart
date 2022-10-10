import 'package:lcountervs/controllers/value_controller.dart';

class User{
  final ValueController<int> life = ValueController(0), magic = ValueController(0);
  
  User(int life, int magic){
    this.life.value = life;
    this.magic.value = magic;
  }
  factory User.zero(){
    return User(0, 0);
  }
  factory User.start(){
    return User(8, 8);
  }
}