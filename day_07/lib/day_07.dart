void main() {
  //dasgal 1

  add(2, 3);
  average(7, 8, 4);
  ihbaga(5, 5);
  print(helloPersonandPet('Jerry', 'Temka'));
  multi(2,5);
  print(radius(3));
}

void add(int a, int b) {
  print(a + b);
}

// dasgal 2
void average(int a, int b, int c) {
  print((a + b + c) / 3);
}
//dasgal 3
void ihbaga(int a, int b){
  if(a>b){
    print(a);}
  else if(a==b) {
    print('they are equal');
  }

  else {
    print(b);
  }
}
//dasgal 4
String helloPersonandPet (String person, String pet){
  return "hello, $person and your furry friend $pet!";

}
//dasgal 5
void multi (int a, int b){
  print(a*b);
}
//dasgal 6
double radius (int r){
  return (2*r*3.14);
}
//dasgal 7

