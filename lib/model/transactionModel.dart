class Transactionmodel {
  final String title, date, amount;
  final bool isWithDrawer;

  Transactionmodel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithDrawer});
}
