part of 'order_bloc.dart';

sealed class OrderState {}

final class OrderInitial extends OrderState {}

final class OrderLoading extends OrderState {}

class OrderSuccess extends OrderState {
  final String message;

  OrderSuccess(this.message);
}

final class OrderFailure extends OrderState {
  final String message;

  OrderFailure(this.message);
}