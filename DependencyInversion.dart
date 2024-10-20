// Abstraction
abstract interface class Bulb {
  void turnOn();
  void turnOff();
}

// Low-level module
class IncandescentBulb implements Bulb {
  @override
  void turnOn() {
    print("Incandescent bulb turned on");
  }

  @override
  void turnOff() {
    print("Incandescent bulb turned off");
  }
}

// Another low-level module
class LedBulb implements Bulb {
  @override
  void turnOn() {
    print("LED bulb turned on");
  }

  @override
  void turnOff() {
    print("LED bulb turned off");
  }
}

// High-level module
class Room {
  Bulb bulb;

  Room(this.bulb);

  void switchLightOn() {
    bulb.turnOn();
  }

  void switchLightOff() {
    bulb.turnOff();
  }
}
