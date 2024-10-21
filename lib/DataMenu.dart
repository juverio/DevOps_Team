import 'package:cloud_firestore/cloud_firestore.dart';

abstract class MenuItem {
  String get name;
  String get imageUrl;
  String get price;
  int get quantity;

  set quantity(int value);
}

class Menu extends MenuItem{
  @override
  final String name;
  @override
  final String imageUrl;
  @override
  final String price;
  @override
  int quantity = 0;

  Menu({
    required this.name,
    required this.imageUrl,
    required this.price,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }

  factory Menu.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return Menu(
      name: data['name'],
      imageUrl: data['imageUrl'],
      price: data['price'],
    )..quantity = data['quantity'] ?? 0;
  }

  factory Menu.fromMap(Map<String, dynamic> map) {
    return Menu(
      name: map['name'],
      imageUrl: map['imageUrl'],
      price: map['price'],
    )..quantity = map['quantity'] ?? 0;
  }
}

class Category{
  final String name;
  final String imageUrl;
  Category({required this.name, required this.imageUrl});
}

class CategoryMenu {
  static List<Category> cat = [
    Category(
      name: "Makanan Utama", 
      imageUrl: "https://img.freepik.com/free-vector/comfort-food-collection-illustrated-style_23-2148532647.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=ais"
    ),
    Category(
      name: "Makanan Pembuka", 
      imageUrl: "https://img.freepik.com/free-vector/hand-drawn-flat-design-vietnamese-food-illustration_23-2149269020.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=sph"
    ),
    Category(
      name: "Hidangan Internasional", 
      imageUrl: "https://img.freepik.com/premium-vector/middle-eastern-food-wooden-table-illustration_18591-65013.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=ais"
    ),
    Category(
      name: "Hidangan Sayuran", 
      imageUrl: "https://img.freepik.com/free-vector/organic-vegetables-plate-illustration_1284-40924.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=ais"
    ),
    Category(
      name: "Makanan Ringan", 
      imageUrl: "https://img.freepik.com/free-vector/cartoon-snack-collection_52683-73164.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=sph"
    ),
    Category(
      name: "Minuman", 
      imageUrl: "https://img.freepik.com/free-vector/cocktail-realistic-set_1284-12659.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=sph"
    ),
    Category(
      name: "Makanan Penutup", 
      imageUrl: "https://img.freepik.com/free-vector/sweets-cakes-flat-icon-set_74855-5939.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=sph"
    ),
    Category(
      name: "Seafood", 
      imageUrl: "https://img.freepik.com/free-vector/seafood-flat-icons-big-set_1284-20035.jpg?size=626&ext=jpg&ga=GA1.1.294282331.1667744608&semt=sph"
    ),
  ];
}

class MenuByCategory extends MenuItem{
  @override
  final String name;
  @override
  final String imageUrl;
  final String category;
  @override
  final String price;
  @override
  int quantity = 0;

  MenuByCategory({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.category
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'category' : category,
      'quantity': quantity,
    };
  }

  factory MenuByCategory.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data() as Map;
    return MenuByCategory(
      name: data['name'],
      imageUrl: data['imageUrl'],
      category: data['category'],
      price: data['price'],
    )..quantity = data['quantity'] ?? 0;
  }

  factory MenuByCategory.fromMap(Map<String, dynamic> map) {
    return MenuByCategory(
      name: map['name'],
      imageUrl: map['imageUrl'],
      category: map['category'],
      price: map['price'],
    )..quantity = map['quantity'] ?? 0;
  }
}

class CartItem {
  final String name;
  final String imageUrl;
  double price;
  int quantity;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.quantity,
  });

  CartItem.fromFirestore(QueryDocumentSnapshot doc)
      : name = doc['name'],
        imageUrl = doc['imageUrl'],
        price = doc['price'].toDouble(),
        quantity = doc['quantity'];

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'price': price,
      'quantity': quantity,
    };
  }

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      name: map['name'],
      imageUrl: map['imageUrl'],
      price: map['price'].toDouble(),
      quantity: map['quantity'],
    );
  }
}