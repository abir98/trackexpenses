class Expensecategory {
  final int id;
  final int budgetId;
  final String name;
  final double allocatedAmount;

  Expensecategory(
      {required this.id,
      required this.budgetId,
      required this.name,
      required this.allocatedAmount});

  factory Expensecategory.fromJson(Map<String, dynamic> json) {
    return Expensecategory(
        id: json["id"],
        budgetId: json["budget_id"],
        name: json["name"],
        allocatedAmount: json["allocated_amount"]);
  }
}
