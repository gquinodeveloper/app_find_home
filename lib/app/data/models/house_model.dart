import 'package:meta/meta.dart' show required;

class HouseModel {
  int idHouse;
  String name;
  int idPhoto;
  String photo;
  String user;
  String avatar;
  int rating;
  String location;
  int price;
  int reviews;
  int bedroom;
  int menu;
  int bathroom;
  String description;
  String utilities;
  int aviable;

  HouseModel({
    this.idHouse,
    this.name,
    this.idPhoto,
    this.photo,
    this.user,
    this.avatar,
    this.rating,
    this.location,
    this.price,
    this.reviews,
    this.bedroom,
    this.menu,
    this.bathroom,
    this.description,
    this.utilities,
    this.aviable,
  });

  factory HouseModel.fromJson(Map<String, dynamic> json) => HouseModel(
        idHouse: json["idHouse"],
        name: json["name"],
        idPhoto: json["idPhoto"],
        photo: json["Photo"],
        user: json["user"],
        avatar: json["avatar"],
        rating: json["rating"],
        location: json["location"],
        price: json["price"],
        reviews: json["reviews"],
        bedroom: json["bedroom"],
        menu: json["menu"],
        bathroom: json["bathroom"],
        description: json["description"],
        utilities: json["utilities"],
        aviable: json["aviable"],
      );

  Map<String, dynamic> toJson() => {
        "idHouse": idHouse,
        "name": name,
        "idPhoto": idPhoto,
        "Photo": photo,
        "user": user,
        "avatar": avatar,
        "rating": rating,
        "location": location,
        "price": price,
        "reviews": reviews,
        "bedroom": bedroom,
        "menu": menu,
        "bathroom": bathroom,
        "description": description,
        "utilities": utilities,
        "aviable": aviable,
      };
}



/* class HouseModel {
  final String name;
  final List<String> photos;
  final User user;
  final double price;
  final int reviews;
  final int bedroom;
  final int menu;
  final int bathroom;
  final String description;
  final List<String> utilities;
  final bool aviable;

  HouseModel({
    @required this.name,
    @required this.photos,
    @required this.user,
    @required this.price,
    @required this.reviews,
    @required this.bedroom,
    @required this.menu,
    @required this.bathroom,
    @required this.description,
    @required this.utilities,
    @required this.aviable,
  });
}

class User {
  final String name;
  final String photo;
  final int rating;
  final String location;

  User(
      {@required this.name,
      @required this.photo,
      @required this.rating,
      @required this.location});
}

final houses = [
  HouseModel(
    name: 'Special House Mix',
    photos: [
      'assets/images/menu-4.jpg',
      'assets/images/bathroom-4.jpg',
      'assets/images/home-4.jpg',
      'assets/images/bedroom-3.jpg',
    ],
    user: User(
      name: 'Gustavo Quino',
      photo: 'assets/images/home-4.jpg',
      rating: 3,
      location: 'Zihuatanejo, MX',
    ),
    price: 1500.00,
    reviews: 20,
    bedroom: 2,
    menu: 1,
    bathroom: 1,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.',
    utilities: ['Speed wifi', 'Deskspace', 'Safe location'],
    aviable: true,
  ),
  HouseModel(
    name: 'Special House',
    photos: [
      'assets/images/menu-2.jpg',
      'assets/images/bathroom-2.jpg',
      'assets/images/home-2.jpg',
      'assets/images/bedroom-2.jpg',
    ],
    user: User(
      name: 'Zully Cedeño',
      photo: 'assets/images/home-4.jpg',
      rating: 5,
      location: 'Manta, EC',
    ),
    price: 570.00,
    reviews: 32,
    bedroom: 3,
    menu: 2,
    bathroom: 4,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.',
    utilities: ['Wifi', 'Phone', 'Light'],
    aviable: false,
  ),
  HouseModel(
      name: 'House Mix',
      photos: [
        'assets/images/menu-1.jpg',
        'assets/images/bathroom-1.jpg',
        'assets/images/home-1/.jpg',
        'assets/images/bedroom-1.jpg',
      ],
      user: User(
        name: 'Mariana Alava',
        photo: 'assets/images/home-4.jpg',
        rating: 4,
        location: 'Manta, EC',
      ),
      price: 5070.00,
      reviews: 12,
      bedroom: 4,
      menu: 1,
      bathroom: 4,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.',
      utilities: ['Wifi', 'Phone', 'Light'],
      aviable: true),
  HouseModel(
    name: 'Special Mix',
    photos: [
      'assets/images/menu-3.jpg',
      'assets/images/bathroom-3.jpg',
      'assets/images/home-3.jpg',
      'assets/images/bedroom-3.jpg',
    ],
    user: User(
      name: 'Mauricio Lopez',
      photo: 'assets/images/home-4.jpg',
      rating: 4,
      location: 'Zihuatanejo, MX',
    ),
    price: 1300.00,
    reviews: 29,
    bedroom: 3,
    menu: 2,
    bathroom: 3,
    description:
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Risus condimentum nulla diam proin quis commodo malesuada. Dolor morbi egestas consectetur egestas aliquam tellus. Accumsan tristique consequat nec cras commodo et orci ipsum, convallis. Lectus nibh ut eget quis quis praesent pellentesque. Molestie a id potenti vivamus blandit aliquet iaculis sed. Amet ut rutrum mauris gravida pellentesque eget in in potenti.',
    utilities: ['Speed wifi', 'Water', 'Safe Location'],
    aviable: false,
  ),
];
 */