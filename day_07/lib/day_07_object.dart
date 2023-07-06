class Animal {
  int legs = 4;
  int eyes = 2;
  int tails = 9;
  int body = 1;
  String species = 'animal';
  int age = 0;


}

void main(){
  final fox= Animal();
  print(fox);
  print(fox.legs);
  fox.species= "fox";
  print(fox.species);
  print(fox.eyes);
  print(fox.tails);
  print(fox.body);

  fox.age = 467;
  print(fox.age);

}
