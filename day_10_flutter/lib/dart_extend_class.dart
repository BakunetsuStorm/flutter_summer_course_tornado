

class Pirate {
  String name = '';
  int age = 0;
  String ability = '';

  int numberOfGold = 0;

  Pirate(
      {required String name,
      required int age,
      required String ability,
      required int numberOfGold}) {
    this.name = name;
    this.age = age;
    this.ability = ability;
    this.numberOfGold = numberOfGold;
  }

  void haiHoi() {
    print(
        "My name is ${this.name}, I'm ${this.age} years old. I have an ability of ${this.ability}, i have ${this.numberOfGold} I'm a member of StrawHat Pirates");
  }
}

class RZoro extends Pirate {
  RZoro(
      {required super.name,
      required super.age,
      required super.ability,
      required super.numberOfGold});
  @override
  void haiHoi() {
    print("I want to become the best Swordsman in the world.");
  }
}

class VSanji extends Pirate {
  VSanji(
      {required super.name,
      required super.age,
      required super.ability,
      required super.numberOfGold});
  @override
  void haiHoi() {
    print("I want to find All Blue.");
  }
}

class Nami extends Pirate {
  Nami(
      {required super.name,
      required super.age,
      required super.ability,
      required super.numberOfGold});
  @override
  void haiHoi() {
    print("I want to draw a complete world atlas!");
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
class Pig extends Animal{
  Pig({required super.name, required super.type});

  @override
  void makeNoise(){
    print('Oink oink');
  }
}
class Cat extends Animal{
  Cat({required super.name, required super.type});
  @override
  void makeNoise(){
    print("Meow");
  }

}
class Human extends Animal{
  Human({required super.name, required super.type});
  @override
  void makeNoise(){
    print("Look at me, Im human i gotta go to work or i cant afford my rent haha im depressed");
  }

}

void main() {
  final RZoro viceCaptain = RZoro(
      name: 'Roronoa Zoro',
      age: 21,
      ability: 'Swordsman',
      numberOfGold: 350000000);
  viceCaptain.haiHoi();
  final VSanji cook = VSanji(
      name: 'Vinsmoke Sanji',
      age: 21,
      ability: 'Germa Special Tech',
      numberOfGold: 500000000);
  cook.haiHoi();
  final Nami navigator =  Nami(
      name: "Nami",
      age: 20,
      ability: 'controling weather',
      numberOfGold: 1000000000000);
  navigator.haiHoi();
  final Pig trashdog = Pig(name: 'Pig', type:'4hult' );
  trashdog.makeNoise();
  final Cat spawnofSatan = Cat(name: 'Cat', type: '4hult');
  spawnofSatan.makeNoise();
  final Human trash = Human(name: "Temka", type: "mammal");
  trash.makeNoise();
}
