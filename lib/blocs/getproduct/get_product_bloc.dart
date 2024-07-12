import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:dio/dio.dart';

import '../../models/product_model.dart';

part 'get_product_event.dart';
part 'get_product_state.dart';

class GetProductBloc extends Bloc<GetProductEvent, GetProductState> {
  final Dio dio;

  GetProductBloc({required this.dio}) : super(GetProductInitial()) {
    on<GettingProduct>((event, emit) async {
      emit(GetProductLoading());
      try {
        final response = await dio.get('https://7481qp09-3000.asse.devtunnels.ms/products');
        if (response.statusCode == 200) {
          List<Product> products = (response.data as List).map((product) => Product.fromJson(product)).toList();
          emit(GetProductSuccess(products));
        } else {
          emit(GetProductFailure('Failed to load products'));
        }
      } catch (e) {
        emit(GetProductFailure(e.toString()));
      }
    });
  }
}
