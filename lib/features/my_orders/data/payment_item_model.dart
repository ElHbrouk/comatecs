class PaymentItemModel
{
  final String id;
  final String date;
  final String paymentStatus;
  final String orderStatus;
  final String price;

  const PaymentItemModel({required this.id, required this.date, required this.paymentStatus, required this.orderStatus, required this.price,});
}