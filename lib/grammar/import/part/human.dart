
part 'body.dart';
part 'head.dart';

class Human {
  log() {
    print("$_bodyName, $_headName");
  }
}

void main() {
  Human human = Human();
  human.log(); // body, log
}