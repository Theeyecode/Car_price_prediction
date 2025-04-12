import 'package:flutter/material.dart';

class NavigationItem {

  IconData iconData;
  String title;

  NavigationItem(this.iconData, this.title);

}

List<NavigationItem> getNavigationItemList(){
  return <NavigationItem>[
    NavigationItem(Icons.home, 'Buy Car'),
    NavigationItem(Icons.calendar_today, 'Sell Car'),
    NavigationItem(Icons.person, 'Person'),
  ];
}

class Car {

  String brand;
  String model;
  double price;
  String condition;
  List<String> images;

  Car(this.brand, this.model, this.price, this.condition, this.images);

}

List<Car> getCarList(){
  return <Car>[
    Car(
      "Land Rover",
      "Discovery",
      2580,
      "Weekly",
      [
        "assets/images/land_rover_0.png",
        "assets/images/land_rover_1.png",
        "assets/images/land_rover_2.png",
      ],
    ),
    Car(
      "Alfa Romeo",
      "C4",
      3580,
      "Monthly",
      [
        "assets/images/alfa_romeo_c4_0.png",
      ],
    ),
    Car(
      "Nissan",
      "GTR",
      1100,
      "Daily",
      [
        "assets/images/nissan_gtr_0.png",
        "assets/images/nissan_gtr_1.png",
        "assets/images/nissan_gtr_2.png",
        "assets/images/nissan_gtr_3.png",
      ],
    ),
    Car(
      "Acura",
      "MDX 2020",
      2200,
      "Monthly",
      [
        "assets/images/acura_0.png",
        "assets/images/acura_1.png",
        "assets/images/acura_2.png",
      ],
    ),
    Car(
      "Chevrolet",
      "Camaro",
      3400,
      "Weekly",
      [
        "assets/images/camaro_0.png",
        "assets/images/camaro_1.png",
        "assets/images/camaro_2.png",
      ],
    ),
    Car(
      "Ferrari",
      "Spider 488",
      4200,
      "Weekly",
      [
        "assets/images/ferrari_spider_488_0.png",
        "assets/images/ferrari_spider_488_1.png",
        "assets/images/ferrari_spider_488_2.png",
        "assets/images/ferrari_spider_488_3.png",
        "assets/images/ferrari_spider_488_4.png",
      ],
    ),
    Car(
      "Ford",
      "Focus",
      2300,
      "Weekly",
      [
        "assets/images/ford_0.png",
        "assets/images/ford_1.png",
      ],
    ),
    Car(
      "Fiat",
      "500x",
      1450,
      "Weekly",
      [
        "assets/images/fiat_0.png",
        "assets/images/fiat_1.png",
      ],
    ),
    Car(
      "Honda",
      "Civic",
      900,
      "Daily",
      [
        "assets/images/honda_0.png",
      ],
    ),
    Car(
      "Citroen",
      "Picasso",
      1200,
      "Monthly",
      [
        "assets/images/citroen_0.png",
        "assets/images/citroen_1.png",
        "assets/images/citroen_2.png",
      ],
    ),
  ];
}

class Dealer {

  String name;
  int offers;
  String image;


  Dealer(this.name, this.offers, this.image);

}

List<Dealer> getDealerList(){
  return <Dealer>[
    Dealer(
      "Hertz",
      174,
      "assets/images/hertz.png",
    ),
    Dealer(
      "Avis",
      126,
      "assets/images/avis.png",
    ),
    Dealer(
      "Tesla",
      89,
      "assets/images/tesla.jpg",
    ),
  ];
}

class Filter {

  String name;

  Filter(this.name);

}

List<Filter> getFilterList(){
  return <Filter>[
    Filter("Best Match"),
    Filter("Highest Price"),
    Filter("Lowest Price"),
  ];
}


List<String> carMakers = [
  "Toyota",
  "Honda",
  "Ford",
  "BMW",
  "Mercedes",
  "Tesla",
  "Nissan",
  "Audi",
  "Chevrolet",
  "Hyundai"
];

List<String> models = [
  "Corolla",
  "Civic",
  "Mustang",
  "X5",
  "C-Class",
  "Model 3",
  "Altima",
  "Q7",
  "Tahoe",
  "Elantra"
];

List<String> colors = [
  "White",
  "Black",
  "Red",
  "Blue",
  "Silver",
  "Gray",
  "White",
  "Black",
  "Blue",
  "Red"
];

List<String> bodyTypes = [
  "Sedan",
  "Sedan",
  "Coupe",
  "SUV",
  "Sedan",
  "Sedan",
  "Sedan",
  "SUV",
  "SUV",
  "Sedan"
];

List<Map<String, int>> dimensions = [
  {"height": 145, "width": 178, "length": 463},
  {"height": 142, "width": 179, "length": 467},
  {"height": 138, "width": 191, "length": 478},
  {"height": 176, "width": 200, "length": 492},
  {"height": 144, "width": 183, "length": 468},
  {"height": 144, "width": 185, "length": 469},
  {"height": 146, "width": 185, "length": 490},
  {"height": 174, "width": 197, "length": 506},
  {"height": 192, "width": 204, "length": 535},
  {"height": 143, "width": 181, "length": 462}
];

List<int> seatNumbers = [2, 3, 4, 5, 6, 7,];

List<int> doorNumbers = [4, 2, 3];
