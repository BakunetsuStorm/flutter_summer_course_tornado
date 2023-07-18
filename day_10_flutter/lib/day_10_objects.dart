class Sprite {
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void sayMyLocation() {
    print('My location is $x and $y');
  }
}

class NamedSprite {
  NamedSprite({required int x, required int y}) {
    this.x = x;
    this.y = y;
  }
  int x = 0;
  int y = 0;
  void sayMylocation() {
    print('My Location is $x and $y');
  }
}

class Animal {
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }

  String name = '';
  String type = '';

  void makeNoise() {
    print('Monkey Roaring');
  }
}

class Hero {
  Hero({
    required String type,
    required int level,
  }) {}

  String type = '';
  int level = 0;
  void showLevel() {
    print("Villain: IT'S OVER 9000!!!");
  }

  void protectCivilians() {
    print('KUSO YAROUU, KORE WA ORE NI SAIGOU NI ATTAKKU DA');
    print('KA');
    print('ME');
    print('HA');
    print('ME');
    print('HAAAAAAA!!!!');
  }


}

void main() {
  final Sprite catSprite = Sprite(10, 40);
  print(catSprite);
  catSprite.sayMyLocation();
  final NamedSprite namedSprite = NamedSprite(x: 40, y: 50);
  namedSprite.sayMylocation();
  final Animal animal = Animal(name: 'SunWukong', type: 'Monkey');
  animal.makeNoise();
  final Hero hero = Hero(type: 'Saiyan', level: 9001);
  hero.showLevel();
  hero.protectCivilians();

}
