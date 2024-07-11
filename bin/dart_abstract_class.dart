void main() {
  // Vehicle vehicle = Vehicle();
  //it throw error in compile time bcs Vehicle is abstarct class and cannot able to create object directly,
  //but we can cretae object for subclass like Motor

  Motor motor = Motor();
  Car car = Car();
  motor.running();
  motor.soSafe();
  car.running();
  car.soSafe();
}

abstract class Vehicle {
  // this can contain normal concrete method and also plain method without any data inside
  // we cannot cretae object directly to this class in main method
  void running();
  void soSafe();
}

class Motor extends Vehicle {
  // missing method implemented here
  @override
  void running() {
    print('Motor can Run Faster than Car');
  }

  @override
  void soSafe() {
    // TODO: implement soSafe
    print('Motor bike safe not than car');
  }
}

class Car extends Vehicle {
  // missing method implemented here
  @override
  void running() {
    print('Car is best than Motor bike');
  }

  @override
  void soSafe() {
    // TODO: implement soSafe
    print('Car safe always');
  }
}
