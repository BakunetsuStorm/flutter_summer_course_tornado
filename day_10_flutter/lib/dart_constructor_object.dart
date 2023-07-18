class Body {
  int numberOfSeats = 0;

  Body({required int numberOfSeats}) {
    this.numberOfSeats = numberOfSeats;
  }
}

class Wheel {
  int numberOfWheels = 0;

  Wheel({required int numberOfWheels}) {
    this.numberOfWheels = numberOfWheels;
  }
}

class Car {
  String name = '';

  Body body = Body(numberOfSeats: 0);
  Wheel wheel = Wheel(numberOfWheels: 0);

  Car({required String name, required Body body, required Wheel wheel}) {
    this.name = name;
    this.body = body;
    this.wheel = wheel;
  }

  void showMyInfo() {
    print(
        'My info is ${this.name} ${this.wheel.numberOfWheels} ${this.body.numberOfSeats}');
  }
}

class Door {
  int numberOfDoors = 0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}

class Floor {
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
}

class Building {

  String name = '';
  Floor floors = Floor(numberOfFloors: 0);
  Door doors = Door(numberOfDoors: 0);
  Building({required String name, required Floor floors, required Door doors}) {
    this.name = name;
    this.floors = floors;
    this.doors = doors;
  }
  void myInfo() {
    print("Ajnai 101 ni ${doors.numberOfDoors} haalgatai, ${floors.numberOfFloors} dawhartai");
  }
}

void main() {
  final Body SkylineGTRBody = Body(numberOfSeats: 4);
  final Wheel SkylineGTRWheel = Wheel(numberOfWheels: 4);
  final Car SkylineGTR =
      Car(name: 'SkylineGTR', body: SkylineGTRBody, wheel: SkylineGTRWheel);
  SkylineGTR.showMyInfo();

  final Floor floor = Floor(numberOfFloors: 3);
  final Door door = Door(numberOfDoors: 2);
  final Building ajnai101 =
      Building(name: "Ajnai101", floors: floor, doors: door);
  ajnai101.myInfo();
}
