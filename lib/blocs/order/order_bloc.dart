import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:garudahack_priasigmas/models/order_model.dart';

// Event
abstract class OrderEvent {}

class CreateOrder extends OrderEvent {
  final Order order;

  CreateOrder(this.order);
}

// State
abstract class OrderState {}

class OrderInitial extends OrderState {}

class OrderLoading extends OrderState {}

class OrderSuccess extends OrderState {
  final String message;

  OrderSuccess(this.message);
}

class OrderFailure extends OrderState {
  final String error;

  OrderFailure(this.error);
}

// Bloc
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final Dio dio;

  OrderBloc({required this.dio}) : super(OrderInitial()) {
    on<CreateOrder>(_onCreateOrder);
  }

  void _onCreateOrder(CreateOrder event, Emitter<OrderState> emit) async {
    emit(OrderLoading());
    try {
      final response = await dio.post(
        'https://dakudaku.vercel.app/order',
        data: event.order.toJson(),
        options: Options(
          validateStatus: (status) => status! < 500,
        ),
      );

      if (response.statusCode == 201) {
        emit(OrderSuccess('Order created successfully'));
      } else {
        print('Bad response: ${response.statusCode} ${response.statusMessage}');
        emit(OrderFailure('Failed to create order: ${response.data}'));
      }
    } catch (e) {
      print('Exception: $e');
      emit(OrderFailure(e.toString()));
    }
  }
}
