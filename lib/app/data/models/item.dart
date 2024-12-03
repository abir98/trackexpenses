class Item {
  final int id;
  final int categoryId;
  final String name;
  final double cost;
  final DateTime purchaseDate;

  Item(
      {required this.id,
      required this.categoryId,
      required this.name,
      required this.cost,
      required this.purchaseDate});

  factory Item.fromJson(Map<String, dynamic> json) {
    return Item(
        id: json['id'],
        categoryId: json['categoryId'],
        name: json['name'],
        cost: json['cost'],
        purchaseDate: json['purchaseDate']);
  }
}
