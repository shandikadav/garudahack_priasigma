part of 'get_product_bloc.dart';

@immutable
sealed class GetProductState {}

final class GetProductInitial extends GetProductState {}

final class GetProductLoading extends GetProductState {}

 class GetProductSuccess extends GetProductState {
  final List<Product> products;

  GetProductSuccess(this.products);
}

final class GetProductFailure extends GetProductState {
  final String message;

  GetProductFailure(this.message);
}
