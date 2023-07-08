import 'dart:math';
class Sprite {
  Sprite(String name) {
    this.name = name;
  }
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  bool isShow = true;
  int size = 100;
  int direction = 190;
  void move(int x) {
    this.x = x;
  }

  String say() {
    return name;
  }

  void changeYby(int y) {
    this.y = y;
  }

  void sayText5Times(String nigga) {
    for (int i = 0; i < 5; i++) {
      print(nigga);
    }
  }

  void changeDirection(int d) {
    this.direction = d;
  }

  String getDirection() {
    if (this.direction <= 90 && this.direction > 0) {
      return 'south east ${this.direction}';
    } else if (this.direction > 90 && this.direction <= 180) {
      return 'south west ${this.direction}';
    } else if (this.direction > 180 && this.direction <= 270) {
      return 'north west ${this.direction}';
    } else if (this.direction > 270 && this.direction <= 359) {
      return 'north east ${this.direction}';
    } else {
      return '';
    }
  }
  void getRandomDirection(){
    final random = Random();
    print(random.nextInt(100));
    int randomNumber = (random.nextInt(100));



  }


}

void main() {
  print('day - 09 - Tornado');
  final Button = Sprite('Button');
  final Witch = Sprite('Witch');
  final Guitar = Sprite('Guitar');
  final Ball = Sprite('Ball');
  print(Button);
  print(Button.x);
  Button.move(10);
  print(Button.x);
  print(Button.say());
  print(Witch.say());
  print(Guitar.say());
  print(Ball.say());
  Button.move(10);
  Button.changeYby(30);
  print(Button.y);
  print(Button.x);
  Witch.move(-30);
  Witch.changeYby(-40);
  print(Witch.y);
  print(Witch.x);
  Guitar.move(100);
  print(Guitar.x);
  Guitar.move(-200);
  print(Guitar.x);
  Guitar.changeYby(30);
  print(Guitar.y);
  Ball.changeYby(200);
  print(Ball.y);
  Ball.changeYby(-300);
  print(Ball.y);
  print(Button.say());
  print(Witch.say());
  print(Guitar.say());
  print(Ball.say());
  Button.sayText5Times('nigga');
  Button.changeDirection(190);
  print(Button.getDirection());
  Button.getRandomDirection();

}
