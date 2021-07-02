import 'package:meta/meta.dart' show required;

class CategoryModel {
  final String name;
  final String path;

  CategoryModel({@required this.name, @required this.path});
}

final categories = [
  CategoryModel(name: 'Home', path: 'assets/icons/house-menu.svg'),
  CategoryModel(name: 'Condominum', path: 'assets/icons/condominium.svg'),
  CategoryModel(name: 'Keys', path: 'assets/icons/keys.svg'),
  CategoryModel(name: 'Offers', path: 'assets/icons/menu-4.svg'),
];
