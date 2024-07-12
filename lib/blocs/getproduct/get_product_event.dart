part of 'get_product_bloc.dart';

@immutable
sealed class GetProductEvent {}

final class GettingProduct extends GetProductEvent {}