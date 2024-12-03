class Budget {
  final String id;
  final String userId;
  final String month;
  final double amount;
  final double spent;
  final double remainingAmount;

  Budget(
      {required this.id,
      required this.userId,
      required this.month,
      required this.amount,
      required this.spent,
      required this.remainingAmount});

  factory Budget.fromJson(Map<String, dynamic> json) {
    return Budget(
        id: json['id'],
        userId: json['userId'],
        month: json['month'],
        amount: json['amount'],
        spent: json['spent'],
        remainingAmount: json['remaining_amount']);
  }
}
