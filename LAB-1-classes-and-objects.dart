// Exercise 1: Create a class Car with properties like brand, model, and year.
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }
}

// Exercise 2: Add a method to the Car class that prints “Vroom Vroom”.
class Car {
  String brand;
  String model;
  int year;

  Car(this.brand, this.model, this.year);

  void printProperties() {
    print('Brand: $brand, Model: $model, Year: $year');
  }

  void vroom() {
    print('Vroom Vroom');
  }
}

// Exercise 3: Create a class ElectricCar that inherits from Car and has an additional property batteryLife.
class ElectricCar extends Car {
  double batteryLife;

  ElectricCar(String brand, String model, int year, this.batteryLife) : super(brand, model, year);

  @override
  void printProperties() {
    super.printProperties();
    print('Battery Life: $batteryLife kWh');
  }
}

