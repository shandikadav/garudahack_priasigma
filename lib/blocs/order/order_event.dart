
import 'package:garudahack_priasigmas/models/order_model.dart';

sealed class OrderEvent {}

final class CreateOrder extends OrderEvent {
  final Order order;

  CreateOrder(this.order);
}
